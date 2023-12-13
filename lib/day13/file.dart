import 'dart:io';

Future<void> main() async {
  File file = File('lib/day13/sample.csv');

  // 예외 처리
  await replace(file).catchError((err) => print("에러 발생: $err"));
}

// 한석봉을 김석봉으로 수정하는 함수
Future<void> replace(File file) async {
  String text = file.readAsStringSync();
  String result = text;
  if (text.contains("한석봉")) {
    result = text.replaceAll("한석봉", "김석봉");
  }
  File copied = File('lib/day13/sample_copy.csv');
  copied.writeAsStringSync(result);
}

