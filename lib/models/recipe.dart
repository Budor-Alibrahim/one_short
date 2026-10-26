import 'ingredient.dart';

class Recipe {

  final int? id;
  final String name;
  final String? description;
  final List<Ingredient> ingredients;
  final int servings;

  const Recipe({
    this.id,
    required this.name,
    this.description,
    required this.ingredients,
    required this.servings,
  });
}
