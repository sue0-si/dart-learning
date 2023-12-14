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
  // Map<String, dynamic> jsonData = jsonDecode(await getMovieInfo());
  // director의 value 출력
  // print(jsonData['director']);

  // 클래스를 만들어 json <-> map 자유롭게 변환
  final String movieInfo = await getMovieInfo();
  print(MovieInfo.fromJson(jsonDecode(movieInfo)).director);
}

class MovieInfo {
  String title;
  String director;
  int year;

  MovieInfo({
    required this.title,
    required this.director,
    required this.year,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'director': director,
      'year': year,
    };
  }

  factory MovieInfo.fromJson(Map<String, dynamic> map) {
    return MovieInfo(
      title: map['title'] as String,
      director: map['director'] as String,
      year: map['year'] as int,
    );
  }
}
