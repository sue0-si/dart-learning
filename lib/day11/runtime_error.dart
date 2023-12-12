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

  /// tryParse(): 성공시 정수 변환, 실패시 null 반환
  /// null일 경우 ?? 연산자로 0을 반환 처리
  // int num = int.tryParse(numString) ?? 0;
  // print(num); // 출력: 0
}


