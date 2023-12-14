// 연습문제 2: 영화의 상세정보를 모델에 담고 json 형태로 출력하기
import 'dart:convert';
import 'package:dart/day14/practice1.dart';
import 'package:http/http.dart' as http;

void main() async {
  final movieDetail = await getMovieDetail(3);
  print(jsonEncode(movieDetail.toJson()));
}

Future<Results> getMovieDetail(int movieId) async {
  // 요청
  final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  return Results.fromJson(jsonDecode(response.body));
}