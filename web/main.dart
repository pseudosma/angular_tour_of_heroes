import 'package:ngdart/angular.dart';
import 'package:ngrouter/ngrouter.dart';
import 'package:angular_tour_of_heroes/app_component.template.dart' as ng;

import 'main.template.dart' as self;

@GenerateInjector(
  routerProvidersHash, // You can use routerProviders in production
)
final InjectorFactory injector = self.injector$Injector;

void main() {
  print("main function");
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
