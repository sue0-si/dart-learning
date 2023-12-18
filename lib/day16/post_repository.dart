// 데이터를 가져오는 객체의 인터페이스
import 'post.dart';

abstract interface class PostRepository {
  Future<List<Post>> getPosts();
}