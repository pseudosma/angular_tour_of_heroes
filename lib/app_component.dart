import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, HeroComponent],
  styleUrls: ['app_component.css'],
  providers: [ClassProvider(HeroService)],
)
class AppComponent implements OnInit {
  final HeroService _heroService;
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero? selected;

  AppComponent(this._heroService);

  void onSelect(Hero hero) => selected = hero;

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }
  
  void ngOnInit() => _getHeroes();
}
