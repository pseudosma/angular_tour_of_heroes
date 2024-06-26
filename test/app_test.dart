@TestOn('browser')

import 'package:ngtest/ngtest.dart';
import 'package:angular_tour_of_heroes/src/hero_list_component.dart';
import 'package:angular_tour_of_heroes/app_component.template.dart' as ng;
import 'package:test/test.dart';

void main() {
  final testBed = NgTestBed<AppComponent>(ng.AppComponentNgFactory);
  late NgTestFixture<AppComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('Default greeting', () {
    expect(fixture.text, 'Hello Angular');
  });

  test('Greet world', () async {
    await fixture.update((c) => c.name = 'World');
    expect(fixture.text, 'Hello World');
  });

  test('Greet world HTML', () {
    final html = fixture.rootElement.innerHtml;
    expect(html, '<h1>Hello Angular</h1>');
  });
}
