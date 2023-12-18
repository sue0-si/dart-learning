import 'dart:convert';
import 'package:dart/day16/class/post.dart';
import 'package:dart/day16/class/post_repository.dart';
import 'package:http/http.dart' as http;

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList.map((e) => Post.fromMap(e)).toList();
  }
}