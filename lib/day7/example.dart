void main() {;
  // non-nullable
  int num1 = 10;

  // nullable
  int? num2;

  // num1 = num2;  // 안됨 - 범위가 null허용 < null 불허
  num2 = num1;  // 가능 - 범위가 null허용 > null 불허

  // int? -> int
  // 절대 !를 쓰지 마라...!!!
  if (num2 != null) {
    num1 = num2;
  }
  num2 = num1;
}