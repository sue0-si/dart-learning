import 'dart:async';
import 'package:dart/day16/class/post.dart';
import 'package:dart/day16/question/practice5/PostRepository.dart';
import 'package:dart/day16/question/practice5/postManager.dart';
import 'package:test/test.dart';


class MockPostRepositoryImpl implements PostRepository {
  final List<Post> _postList = [];
  @override
  Future<List<Post>> getPosts() async {
    return _postList;
  }

  @override
  Future<void> addPost(Post post) async {
    _postList.add(post);
  }

  @override
  Future<void> deletePost(Post post) async {
    _postList.remove(post);
  }

  @override
  Future<void> updatePost(Post post) async {
    final index = _postList.indexWhere((element) => element == post);
    _postList[index] = post;
  }
}

void main() {
  test('PostManager addPost test (Create)', () async {
    PostRepository postRepository = MockPostRepositoryImpl();
    PostManager postManager = PostManager(postRepository);
    postManager.addPost(Post(userId: 1, id: 1, title: 'title', body: 'body'));

    final posts = await postRepository.getPosts();
    expect(posts.length, 1);
    expect(posts[0].title, "title");
  });

  test('PostManager removePost test (Remove)', () async {
    PostRepository postRepository = MockPostRepositoryImpl();
    PostManager postManager = PostManager(postRepository);
    final post = Post(userId: 1, id: 1, title: 'title', body: 'body');
    postManager.addPost(post);
    postManager.deletePost(post);
    final posts = await postRepository.getPosts();
    expect(posts.length, 0);
  });


}