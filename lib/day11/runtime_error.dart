void main() {
  final numString = "10.5";
  int num;
  try {
    num = int.parse(numString);
  } on FormatException {
    print("Invalid radix-10 number: 받은 문자열의 내용이 정수 형태가 아닙니다.");
    num = 0;
  }
  print("num: $num");
}