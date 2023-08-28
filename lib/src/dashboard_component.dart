import 'package:ngdart/angular.dart';
import 'package:ngrouter/ngrouter.dart';

import 'hero.dart';
import 'hero_service.dart';
import 'route_paths.dart';
import 'hero_search_component.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  styleUrls: ['dashboard_component.css'],
  directives: [coreDirectives, HeroSearchComponent, routerDirectives],
)

class DashboardComponent implements OnInit {
  List<Hero> heroes = <Hero>[];

  final HeroService _heroService;

  DashboardComponent(this._heroService);

  @override
  void ngOnInit() async {
    heroes = (await _heroService.getAll()).skip(1).take(4).toList();
  }

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});
}