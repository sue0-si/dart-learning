void main() {
  final input = <String>["010", "1234", "5678"];
  print(solution(input));
}

String solution(List<String> input) {
  String result = '모두연 ';

  for (int i = 0; i < input.length; i++) {
    result += input[i];
    if (i != input.length - 1) {
      result += '-';
    }
  }

  return result;
}

