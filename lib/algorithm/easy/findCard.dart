void main() {
  print(solution([1, 2, 3, 4, 5]));
}

int solution(List<int> cards) {
  int sum = 0;
  for (var value in cards) {
    sum += value;
  }
  return 15 - sum;
}

int solution2(List<int> cards) {
  return 15 - cards.reduce((value, element) => value + element);
}


