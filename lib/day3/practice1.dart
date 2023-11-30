import 'dart:math';

class Cleric {
  int hp = 50;
  late String name;
  final int maxHP = 50;
  final int maxMP = 10;
  int mp = 10;

  void selfAid() {
    mp -= 5;
    hp = maxHP;
  }

  num pray(int seconds) {
    int healed = seconds + Random().nextInt(2);
    if (healed + mp > maxMP) {
        mp = maxMP;
    }
    mp += healed;
    print('amount of heal: $healed');
    return healed;
  }
  Cleric(this.hp, this.name, this.mp);
}

void main() {
  Cleric cleric = new Cleric(23, "me", 2);
  cleric.pray(50);
  cleric.selfAid();

  print(cleric.hp);
  print(cleric.mp);
}