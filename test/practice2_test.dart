import 'package:dart/day16/question/practice2.dart';
import 'package:test/test.dart';

void main() {
  test('짝수 판별', () {
    CheckEven checkEven = CheckEven();
    expect(checkEven.isEven(4), true);
    expect(checkEven.isEven(3), false);
  });
}