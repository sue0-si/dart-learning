import '../Bionic.dart';
import 'Terran.dart';
import '../Unit.dart';

// Medic은 생물유닛과 SCV 를 치료할 수 있습니다.
// 하지만 건물은 치료할 수 없습니다.
class Medic extends Terran implements Bionic {
  String _type = 'Medic';

  void heal(Unit unit) {
   if (unit.type == 'Bionic' || unit.type == 'SCV') {

   }
  }

}