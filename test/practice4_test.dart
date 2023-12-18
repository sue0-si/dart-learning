import 'package:dart/day16/question/practice4.dart';
import 'package:test/test.dart';

void main() {
  test('문자열 뒤집기 테스트', () {
    Practice4 practice4 = Practice4();
    expect(practice4.reverseString("Hello"), "olleH");
  });
}