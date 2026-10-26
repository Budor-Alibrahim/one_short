import 'package:flutter_test/flutter_test.dart';
import 'package:one_short/models/recipe_scaler.dart';

void main() {

  final scaler = RecipeScaler();
  test('1', () {
    expect(scaler.scaleServings(2, 4), 2);
  });
  test('2', () {
    expect(scaler.scaleServings(2, 1), 0.5);
  });
  test('3', () {
    expect(() => scaler.scaleServings(0, 2), throwsArgumentError);
  });
  test('4', () {
    expect(() => scaler.scaleServings(2, -2), throwsArgumentError);
  });
}
