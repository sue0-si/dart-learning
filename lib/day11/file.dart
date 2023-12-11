import 'dart:io';

void main() {
  // Open
  final file = File('save.txt');
  // 파일에 문자열 추가
  file.writeAsStringSync('Hello World');

  // if-else 대신 try-catch써도 됨
  if (file.existsSync()) {
    final text = file.readAsStringSync();
    print(text);
  } else {
    print("file does not exist");
  }




}