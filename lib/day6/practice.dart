// direction: Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
// 부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여 프로그램을 중단 시킵니다.
// 1) 마법사나 지팡이의 이름은 null일 수 없고, 반드시 3문자 이상이어야 한다.
// 2) 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
// 3) 마법사의 지팡이는 null 일 수 없다.
// 4) 마법사의 MP는 0 이상이어야 한다.
// 5) HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

void main() {
  Wand wand = Wand(name: "아이스", power: 0.5);
  Wizard wizard = Wizard(name: "대현자", hp: 15, wand: wand, mp: 10);

  print("마법사 ${wizard.name}와 ${wand.name}완드가 생성되었습니다.");
}

class Wand {
  String name;
  double power;

  Wand({
    required this.name,
    required this.power,
  }) {
    if (name.length < 3 ) {
      throw Exception("이름은 3문자 이상이어야 합니다.");
    }
    if (power > 100.0 || power < 0.5) {
      throw Exception("지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.");
    }

  }



}

class Wizard {
  String name;
  int hp;
  Wand? wand;
  int mp;

  Wizard({
    required this.name,
    required this.hp,
    this.wand,
    required this.mp
  }) {
    if (name.length < 3 ) {
      throw Exception("이름은 3문자 이상이어야 합니다.");
    }
    if (wand == null) {
      throw Exception("지팡이가 null일 수 없습니다.");
    }
    if (mp < 0) {
      throw Exception("마법사의 MP는 0 이상이어야 합니다.");
    }
    if (hp < 0) {
      hp = 0;
    }

  }


}

