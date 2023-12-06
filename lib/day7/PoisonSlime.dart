import 'Hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임 $suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
    if (hero.hp <= 0) {
      hero.hp = 0;
    }
  }

}

class PoisonSlime extends Slime {
  int _remain = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_remain > 0) {
      print("추가로, 독 포자를 살포했다!");
      hero.hp -= hp * (1 / 5).round();
      // final int damage = hero.hp ~/ 5;
      print("${hero.hp}포인트의 데미지");
      _remain--;
    }
    if (hero.hp <= 0) {
      hero.hp = 0;
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('A');
  Hero hero1 = Hero(name: "zz용사zz", hp: 0);
  poisonSlime.attack(hero1);
}