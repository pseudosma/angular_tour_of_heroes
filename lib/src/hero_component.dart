import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import 'hero.dart';

@Component(
  selector: 'my-hero',
  templateUrl: 'hero_component.html',
  directives: [coreDirectives, formDirectives],
)
class HeroComponent {
  @Input()
  Hero? hero;
}
