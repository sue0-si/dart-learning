import 'package:dart/day16/class/post.dart';
import 'package:dart/day16/question/practice5/PostRepository.dart';

class PostManager {
  final PostRepository _postRepository;

  PostManager(this._postRepository);

  Future<void> addPost(Post post) async {
    await _postRepository.addPost(post);
  }

  Future<void> deletePost(Post post) async {
    await _postRepository.deletePost(post);
  }

  Future<void> updatePost(Post post) async {
    await _postRepository.updatePost(post);
  }
}