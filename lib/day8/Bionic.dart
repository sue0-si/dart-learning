import 'package:dart/day8/Unit.dart';

abstract interface class Bionic extends Unit {
  Bionic({
    required super.hp,
    required super.unitType,
    required super.army
  });

  @override
  set unitType(String unitType);

}