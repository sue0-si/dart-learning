import '../Bionic.dart';

class Zealot implements Bionic {
  String _unitType;
  void shield() {

  }

  Zealot ({
    required String unitType
  }) : _unitType = unitType;

  @override
  get unitType => _unitType;

  @override
  set unitType(String unitType) {
    _unitType = unitType;
  }



}