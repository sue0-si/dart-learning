import 'dart:convert';
import 'dart:io';

import 'package:dart/day16/class/post.dart';
import 'package:dart/day16/question/practice5/PostRepository.dart';

class PostFileRepositoryImpl implements PostRepository {
  final _file = File('lib/day16/question/practice5/posts.txt');
  final List<Post> _postList = [];

  Future<void> _writeFile() async {
    final String writeString = jsonEncode(_postList);
    await _file.writeAsString(writeString);
  }

  @override
  Future<void> addPost(Post post) async {
    _postList.add(post);
  }

  @override
  Future<void> deletePost(Post post) async {
    if (!_postList.contains(post)) {
      print("해당 게시글이 존재하지 않아 삭제가 불가능합니다.");
      return;
    }
    _postList.remove(post);
    await _writeFile();
  }

  @override
  Future<List<Post>> getPosts() async {
    return _postList;
  }

  @override
  Future<void> updatePost(Post post) async {
    if (!_postList.contains(post)) {
      print("해당 게시글이 존재하지 않아 갱신이 불가능합니다.");
      return;
    }
    final index = _postList.indexWhere((element) => element == post);
    _postList[index] = post;
    await _writeFile();
  }

}