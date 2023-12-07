import 'package:dart/day8/Unit.dart';

abstract interface class Mechanic extends Unit {
  Mechanic({
    required super.unitType,
  });

  @override
  set unitType(String unitType);
}