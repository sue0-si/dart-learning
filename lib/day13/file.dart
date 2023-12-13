import 'dart:io';

Future<void> main() async {
  File file = File('lib/day13/sample.csv');
  await replace(file).catchError((err) => print("에러 발생: $err"));
}

Future<void> replace(File file) async {
  String text = file.readAsStringSync();
  String result = text;
  if (text.contains("한석봉")) {
    result = text.replaceAll("한석봉", "김석봉");
  }
  File copied = File('lib/day13/sample_copy.csv');
  copied.writeAsStringSync(result);
}

