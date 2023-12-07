import 'package:dart/day8/Mechanic.dart';

class Dragun implements Mechanic {
  String _unitType;

  Dragun ({
    required String unitType
  }) : _unitType = unitType;

  @override
  get unitType => _unitType;

  @override
  set unitType(String unitType) {
    _unitType = unitType;
  }

}