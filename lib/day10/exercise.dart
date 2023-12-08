class StrongBox<E> {
  // 금고 클래스에 담는 인스턴스의 타입은 미정
  E? _money;

  // 열쇠의 종류를 나타내는 필드 변수
  KeyType keyType;

  // 열쇠의 종류를 받는 생성자
  StrongBox({
    required this.keyType,
  });

  // 메서드로 인스턴스를 저장
  void put(E money) {
    _money = money;
  }

  int count = 0;

  // 금고에 저장된 인스턴스를 얻음
  // 금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고
  // 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴
  E? get() {
    count++;
    switch (keyType) {
      case KeyType.padlock:
        if (count < 1024) {
          return null;
        }
      case KeyType.button:
        if (count < 10000) {
          return null;
        }
      case KeyType.dial:
        if (count < 30000) {
          return null;
        }
      case KeyType.finger:
        if (count < 1000000) {
          return null;
        }
    }
    return _money;
  }

}

// 열쇠의 종류를 나타내는 열거형 KeyType
// 열쇠의 종류는 다음 4종류로 한정한다. 각 열쇠는 사용횟수의 한도가 정해져 있다.
// padlock    (1,024회)
// button      (10,000회)
// dial             (30,000회)
// finger       (1,000,000회)
enum KeyType {
  padlock,
  button,
  dial,
  finger
}

void main() {
  StrongBox box = StrongBox(keyType: KeyType.padlock);
  box.put("1000억");
  print(box.get());
  print(box.get());
}

