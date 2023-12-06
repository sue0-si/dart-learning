import 'package:dart/day8/Unit.dart';

abstract interface class Mechanic extends Unit {
  Mechanic({
    required super.hp,
    required super.unitType,
    required super.army
  });

  @override
  set unitType(String unitType);
}