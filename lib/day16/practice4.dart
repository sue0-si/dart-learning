// 입력으로 문자열을 받아들이는 함수 reverseString을 작성하세요.
// reverseString 함수는 입력된 문자열을 뒤집어 반환해야 합니다.
class Practice4 {
  String reverseString(String s) {
    List<String> list = s.split('');
    return list.reversed.join();
  }
}