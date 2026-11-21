import 'package:one_short/models/ingredient.dart';

class RecipeScaler {
  double scaleServings(int servings, int newServings) {
    double factor;

    if (servings <= 0) {
      throw ArgumentError('Servings cannot be 0 or negative');
    }
    if (newServings <= 0) {
      throw ArgumentError('New Servings cannot be 0 or negative');
    }

    factor = newServings / servings;

    return factor;
  }

  double scaleAvailableQty(double originalQty, double availableQty) {
    double factor;

    if (originalQty <= 0) {
      throw ArgumentError('originalQty cannot be 0 or negative');
    }
    if (availableQty <= 0) {
      throw ArgumentError('availableQty cannot be 0 or negative');
    }

    factor = availableQty / originalQty;

    return factor;
  }

  List<Ingredient> adjustRecipe(List<Ingredient> ingredients, double factor) {
    if (factor <= 0) {
      throw ArgumentError('factor must be positive');
    }

    final result = <Ingredient>[];

    for (final ingredient in ingredients) {
      final newIngredient = Ingredient(
        id: ingredient.id,
        name: ingredient.name,
        unit: ingredient.unit,
        quantity: ingredient.quantity * factor,
      );
      result.add(newIngredient);
    }

    return result;
  }
}
