import 'package:dart/day16/practice3.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('리스트에서 최댓값 찾기 테스트', () {
    Practice3 practice3 = Practice3();
    expect(practice3.findMax([2, 5, 1, 9, 3]), 9);
    expect(practice3.findMax([4, 5, 5, 3, 2]), 5);
  });
}