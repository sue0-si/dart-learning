import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    "title" : "Star Wars",
    "director" : "George Lucas",
    "year" : 1977
  };
  return jsonEncode(mockData);
}

Future<void> main() async {
  // json을 map으로 변환
  Map<String, dynamic> jsonData = jsonDecode(await getMovieInfo());
  // director의 value 출력
  print(jsonData['director']);
}
