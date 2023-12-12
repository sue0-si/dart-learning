import 'package:dart/day8/Bionic.dart';

// Zerg 종족은 모든 유닛과 건물이 생물로 구성되어 있습니다.
// 저그 종족의 모든 유닛과 건물은 피해를 입어도 시간이 지나면 자동으로 조금씩 회복되는 능력을 가지고 있습니다.
class Zerg implements Bionic {
  String _unitType = 'zerg';
  void selfAid() {

  }

  @override
  set unitType(String unitType) {
    _unitType = unitType;
  }

  @override
  String get unitType => _unitType;



}