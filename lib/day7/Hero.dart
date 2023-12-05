import 'PoisonSlime.dart';

class Hero {
  String name;
  int hp;

  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    hp -= 10;
  }
  void run() {
    print('$name이 도망쳤다.');
  }

  Hero({
    required this.name,
    required this.hp,
  });
}

