import 'package:dart/day8/Unit.dart';

abstract interface class Bionic extends Unit {
  Bionic({
    required super.unitType,
  });

  @override
  set unitType(String unitType);

}