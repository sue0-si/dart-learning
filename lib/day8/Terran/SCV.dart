import 'package:dart/day8/Mechanic.dart';
import 'Terran.dart';

// SCV는 일꾼 유닛으로 자원을 채취할 수 있으며, 기계 유닛의 수리를 할 수 있습니다.
class SCV extends Terran implements Mechanic {
  String _unitType = 'SCV';


  void collect() {

  }

  void repair() {

  }


  @override
  set unitType(String unitType) {
    super.unitType = _unitType;
  }


}