import 'dart:math';

// 1-1. 현실세계의 성직자 “클레릭" 를 표현하는 클래스 Cleric 를 작성 하시오.
// 속성이나 동작은 작성 할 필요 없습니다. (내용은 아무것도 작성하지 않아도 됨)

// 1-2. 1-1에서 작성한 내용이 없는 Cleric 클래스에 “이름", “HP”, “최대 HP”, “MP”, “최대 MP”를 속성으로 추가 하시오.
// 또한 HP와 최대 HP는 정수로 초기치 50, MP와 최대 MP는 정수로 초기치 10으로 하고,
// 최대 HP와 최대 MP는 상수 필드로 선언 하시오.
class Cleric {
  int hp = 50;
  late String name;
  final int maxHP = 50;
  final int maxMP = 10;
  int mp = 10;

  // 1-3. 성직자는 “셀프 에이드" 라는 마법을 사용할 수 있고, MP를 5소비하는 것으로 자신의 HP 를 최대 HP 까지 회복할 수 있다.
  // 연습 1-2 에 선언한 Cleric 클래스에 “selfAid()” 메소드를 추가 하시오.
  // 또한, 이 메소드는 인수가 없고, 리턴 값도 없다.
  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHP;
    } else {
      print("자힐에 필요한 MP가 부족해요!!");
    }
  }

  // 1-4. 성직자는 “기도하기" (pray) 라는 행동을 취할 수 있고, 자신의 MP를 회복한다.
  // 회복량은 기도한 시간(초)에 랜덤하게 0 ~ 2포인트의 보정을 한 양이다 (3초 기도하면 회복량은 3 ~ 5 포인트). 단, 최대 MP 보다 더 회복하는 것은 불가능 하다.
  // 연습 1-3에서 선언한 Cleric 클래스에 “pray()” 메소드를 추가하시오.
  // 이 메소드는 인수에 “기도할 시간(초)"를 지정할 수 있고, 리턴 값은 “실제로 회복된 MP 양" 을 반환한다.
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
