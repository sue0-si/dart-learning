// N, M 두 정수가 짝수와 홀수의 쌍이면 “YES”, 그렇지 않으면 “NO”를 출력합니다.

void main() {
  print(solution(15, 18));
}

String solution(int n, int m) {
  if ( (n % 2 == 0 && m % 2 == 0) || (n % 2 == 1 && m % 2 == 1)) {
    return "YES";
  } else {
    return "NO";
  }
}

// 수학적으로 응용 - 수의 합이 홀수면 더하는 수에 홀수가 포함된 것이다.
// 2, 1  => 2 + 1 은 홀수이므로 NO
// Tip. 중간에 리턴을 많이 넣지 마라.
String solution2(int n, int m) {
  String result = 'NO';

  if ((n + m) % 2 == 1) {
    result = 'YES';
  }
  return result;
}