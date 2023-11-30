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
    num healed = seconds + Random().nextInt(2);
    return healed;
  }
}