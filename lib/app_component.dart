import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import 'src/hero.dart';
import 'src/mock_heros.dart';
@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, formDirectives],
  styleUrls: ['app_component.css'],
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero? selected;

  void onSelect(Hero hero) => selected = hero;
}
