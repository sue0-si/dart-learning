import 'dart:math';

// 2-1. 현시점의 Cleric 클래스의 정의에는, 각 인스턴스별로 최대 HP와 최대 MP 필드에 정보를 가지고 있습니다.
// 하지만, 모든 성직자의 최대 HP 는 50, 최대 MP 는 10으로 정해져 있어, 각 인스턴스가 각각의 정보를 가지는 것은 메모리 낭비이다.
//그래서, 최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가 하던지 말던지 자유.

class Cleric {
  int hp = 50;
  late String name;
  static int maxHP = 50;
  static int maxMP = 10;
  int mp = 10;

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHP;
    } else {
      print("자힐에 필요한 MP가 부족해요!!");
    }
  }


  int pray(int seconds) {
    int result;
    int healed = seconds + Random().nextInt(2);
    if (healed + mp > maxMP) {
      healed = maxMP;
      mp = maxMP;
      result = maxMP - healed;
    } else {
      mp += healed;
      result = healed;
    }
    print('$result만큼 mp가 회복되었습니다.');
    return result;
  }

  Cleric(this.hp, this.name, this.mp);
}

void main() {
  Cleric cleric = new Cleric(23, "me", 2);
  print('초기 hp: ${cleric.hp}');
  print('초기 mp: ${cleric.mp}\n');

  cleric.selfAid();
  cleric.pray(3);

  print('\n현재 hp: ${cleric.hp}');
  print('현재 mp: ${cleric.mp}');
}
