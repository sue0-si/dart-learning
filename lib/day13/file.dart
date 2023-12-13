import 'dart:io';

void main() async {
  File file = File('lib/day13/sample.csv');
  String text = file.readAsStringSync();
  print(text);

  final result = await replace(text);
  print(result);

}

Future<String> replace(String text) async {
  String result = text;
  if (text.contains("한석봉")) {
    result = text.replaceAll("한석봉", "김석봉");
  }
  return result;
}