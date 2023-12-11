class StrongBox<E> {
  // 금고 클래스에 담는 인스턴스의 타입은 미정
  E? _data;

  // 열쇠의 종류를 나타내는 필드 변수
  final KeyType _keyType;

  // 열쇠의 종류를 받는 생성자
  StrongBox({
    required KeyType keyType,
  }) : _keyType = keyType ;

  // 메서드로 인스턴스를 저장
  void put(E data) {
    _data = data;
  }

  int _count = 0;

  // 금고에 저장된 인스턴스를 얻음
  // 금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고
  // 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴
  E? get() {
    _count++;
    switch (_keyType) {
      case KeyType.padlock:
        if (_count < 1024) {
          return null;
        }
      case KeyType.button:
        if (_count < 10000) {
          return null;
        }
      case KeyType.dial:
        if (_count < 30000) {
          return null;
        }
      case KeyType.finger:
        if (_count < 1000000) {
          return null;
        }
    }
    return _data;
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
  for (int i = 1; i < 1025; i++) {
      print('$i번째 해제 시도: ${box.get()}');
  }
}

