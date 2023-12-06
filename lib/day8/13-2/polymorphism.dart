abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y{
  @override
  void a(){
    print('Aa');
  }

  @override
  void b(){
    print('Ab');
  }

  void c(){
    print('Ac');
  }
}

class B extends Y{
  @override
  void a(){
    print('Ba');
  }

  @override
  void b(){
    print('Bb');
  }

  void c(){
    print('Bc');
  }
}

void main() {
  X obj = A();
  obj.a();

  Y y1 = A();
  Y y2 = B();

  // y1은 A의 인스턴스, 타입은 Y - 클래스 A의 a() 메소드가 호출됨
  y1.a();
  // y2는 B의 인스턴스, 타입은 Y - 클래스 B의 a() 메소드가 호출됨
  y2.a();
}