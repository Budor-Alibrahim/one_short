import 'unit.dart';

class Ingredient {
  final int? id;
  final String name;
  final double quantity;
  final Unit unit;

  const Ingredient({
    this.id,
    required this.name,
    required this.quantity,
    required this.unit,
  });
}
