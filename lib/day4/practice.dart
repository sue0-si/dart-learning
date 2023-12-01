import 'dart:math';

// 2-1. 현시점의 Cleric 클래스의 정의에는, 각 인스턴스별로 최대 HP와 최대 MP 필드에 정보를 가지고 있습니다.
// 하지만, 모든 성직자의 최대 HP 는 50, 최대 MP 는 10으로 정해져 있어, 각 인스턴스가 각각의 정보를 가지는 것은 메모리 낭비이다.
//그래서, 최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가 하던지 말던지 자유.

class Cleric {
  int hp = 50;
  late String name;
  static const int maxHP = 50;
  static const int maxMP = 10;
  int mp = 10;

  void selfAid() {
    if (hp >= 50 ) {
      print("자힐 실패: 이미 hp가 최대치에요!");
      return;
    }
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

  Cleric({
    required this.name,
    this.hp = maxHP,
    this.mp = maxMP,
  });

}

void main() {
  // 2-2 A) 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다.
  Cleric cleric1 = Cleric(name: "me", hp: 23, mp: 2);

  // 2-2 B) Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다.
  Cleric cleric2 = Cleric(name: "me", hp: 23);

  // 2-2 C) Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
  Cleric cleric = Cleric(name: "me");

  // 2-2 D) Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음)
  // Cleric cleric = Cleric();

  print('초기 hp: ${cleric.hp}');
  print('초기 mp: ${cleric.mp}\n');

  cleric.selfAid();
  cleric.pray(3);

  print('\n현재 hp: ${cleric.hp}');
  print('현재 mp: ${cleric.mp}');

}
