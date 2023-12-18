import 'dart:async';
import 'dart:convert';

import 'package:dart/day16/class/post.dart';
import 'package:dart/day16/question/practice5/PostRepository.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';


class MockPostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPosts() async {
    return Future.value({
      Post(
          userId: 1,
          id: 1,
          title: "title",
          body : "body"
      ),  // Post
    } as FutureOr<List<Post>>?);
  }

  @override
  Future<void> addPost(Post post) {
    // TODO: implement addPost
    throw UnimplementedError();
  }

  @override
  Future<void> deletePost(Post post) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<void> updatePost(Post post) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }
}

void main() {
  test('테스트', () async {
    PostRepository postRepository = MockPostRepositoryImpl();
    final posts = await postRepository.getPosts();

  });
}