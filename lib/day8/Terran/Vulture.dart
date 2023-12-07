import 'package:dart/day8/Mechanic.dart';
import 'package:dart/day8/Terran/Terran.dart';

class Vulture extends Terran implements Mechanic {
  String _unitType = 'vulture';

  Vulture({
    required super.hp,
    required super.unitType
  }) : _unitType = unitType;

  @override
  set unitType(String unitType) {
    _unitType = unitType;
  }

  @override
  get unitType => _unitType;
}