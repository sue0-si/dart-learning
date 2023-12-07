// Terran 은 인간 종족이고 생물(Bionic) 유닛인 Marine, Medic 등과
// 기계 유닛(Mechanic)인 Tank, Vulture, SCV 등이 있습니다.

abstract class Terran {
  int hp;
  String unitType;


  Terran({
    required this.hp,
    required this.unitType
  });
}