// A, B 두 정수 중 더 큰 수를 출력
// A, B가 같다면 ‘eq’를 출력

void main() {
  print(solution(4, 4));
}

String solution(int a, int b) {
  if (a > b) {
    return a.toString();
  } else if (b > a) {
    return b.toString();
  } else {
    return 'eq';
  }
}