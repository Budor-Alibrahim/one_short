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
}
