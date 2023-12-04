void main() {
  Wand wand = Wand(name: "아이스", power: 0.5);
  Wizard wizard = Wizard(name: "대현자", hp: 15, mp: 10);

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
    if (mp < 0) {
      throw Exception("마법사의 MP는 0 이상이어야 합니다.");
    }
    if (hp < 0) {
      hp = 0;
    }

  }


}

