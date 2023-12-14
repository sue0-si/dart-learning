import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Todo.dart';

void main() async {
  // 실습1
  Todo todo = await getTodo2(1);
  print(todo.title);

  // 실습2
  List<Todo> todos = await getTodos2();
  for (var element in todos) {
    print(element.title);
  }

}

Future<Todo> getTodo(int id) async {
  // 요청
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  // json String
  final jsonString = response.body;
  // toMap
  final json = jsonDecode(jsonString);
  // 모델클래스로 변환
  return Todo.fromJson(json);
}

// ver2
Future<Todo> getTodo2(int id) async {
  // 요청
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  return Todo.fromJson(jsonDecode(response.body));
}

// 여러개 리스트를 받을 때 패턴
Future<List<Todo>> getTodos() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));
  final jsonString = response.body;
  final json = jsonDecode(jsonString) as List<dynamic>;
  return json.map((e) => Todo.fromJson(e)).toList();
}

// 여러개 리스트를 받을 때 패턴 ver2
Future<List<Todo>> getTodos2() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));
  final json = jsonDecode(response.body) as List<dynamic>;
  return json.map((e) => Todo.fromJson(e)).toList();
}

