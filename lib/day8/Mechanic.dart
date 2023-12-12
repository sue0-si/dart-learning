import 'package:dart/day8/Unit.dart';

abstract interface class Mechanic extends Unit {
  Mechanic({
    required super.unitType,
    required super.hp,
  });

  @override
  set unitType(String unitType);
}