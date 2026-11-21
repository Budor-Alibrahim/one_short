import 'package:flutter_test/flutter_test.dart';
import 'package:one_short/models/recipe_scaler.dart';

void main() {

  final scaler = RecipeScaler();
  test('returns 2.0 when servings go from 2 to 4', () {
    expect(scaler.scaleServings(2, 4), 2.0);
  });
  test('returns 0.5 when servings go from 2 to 1', () {
    expect(scaler.scaleServings(2, 1), 0.5);
  });
  test('throws ArgumentError when servings is 0', () {
    expect(() => scaler.scaleServings(0, 2), throwsArgumentError);
  });
  test('throws ArgumentError when newServings is negative', () {
    expect(() => scaler.scaleServings(2, -2), throwsArgumentError);
  });

  test('returns about 0.667 when available is 400 and original is 600', () {
    expect(scaler.scaleAvailableQty(600, 400), closeTo(0.667, 0.001));
  });
  test('returns about 1.5 when available is 900 and original is 600', () {
    expect(scaler.scaleAvailableQty(600, 900), 1.5);
  });
  test('returns about 1 when available is 600 and original is 600', () {
    expect(scaler.scaleAvailableQty(600, 600), 1);
  });
  test('throws ArgumentError when available is 0', () {
    expect(() => scaler.scaleAvailableQty(600, 0), throwsArgumentError);
  });
  test('throws ArgumentError when original is 0', () {
    expect(() => scaler.scaleAvailableQty(0, 400), throwsArgumentError);
  });
  test('throws ArgumentError when original is negative', () {
    expect(() => scaler.scaleAvailableQty(-600, 400), throwsArgumentError);
  });
  test('throws ArgumentError when available is negative', () {
    expect(() => scaler.scaleAvailableQty(600, -400), throwsArgumentError);
  });
}
