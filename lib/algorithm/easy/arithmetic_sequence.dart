void main() {
  print(solution(5, 10));
}

String solution(int n, int m) {
  String result = '';
  for (int i = 0; i < 10; i++) {
    result += '${n + m * i} ';
    if (i == 9) {
      result += '${n + m * i}';
    }
  }
  return result;
}

