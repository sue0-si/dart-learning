import 'package:intl/intl.dart';

class Book implements Comparable<Book> {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  // Deep copy를 위한 메소드
  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }

  // sort()를 위한 comparator - comparable 인터페이스 구현
  @override
  int compareTo(Book book) {
    final equal = title.compareTo(book.title);
    if (equal == 0) {
      return publishDate.compareTo(book.publishDate);
    }
    return equal;
  }

  // == 재정의 (자바의 equals 메소드)
  // 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 Set 에 넣으면 동일 객체로 판단한다.
  @override
  bool operator == (Object other) =>
      identical(this, other) ||
          other is Book &&
              runtimeType == other.runtimeType
              && title == other.title
              && DateFormat('yyyy-MM-dd').format(publishDate) ==
              DateFormat('yyyy-MM-dd').format(other.publishDate);


  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  @override
  String toString() {
    return 'title: $title, publishDate: $publishDate, comment: $comment\n';
  }
}


void main() {
  Book book1 = Book(title: "Harry Potter", publishDate: DateTime(1944, 6, 6), comment: 'steadySeller');
  Book book2 = Book(title: "One Piece", publishDate: DateTime(1944, 6, 6), comment: 'comics');
  Book book3 = Book(title: "Harry Potter", publishDate: DateTime(1944, 4, 6), comment: 'seller');
  List<Book> bookList = [book2, book1, book3];
  Set<Book> bookSet = {book1, book2, book3};

  print(book1 == book3);
  print('Book list: $bookList');
  print('책의 가짓수: ${bookSet.length}');

  bookList.sort();
  print(bookList.toString());

  // Deep copy test - 두 객체는 서로 다른 해쉬값을 가져야 함(?)
  Book book4 = book2.copyWith();
  Book book5 = book2;
  final clone = Book(title: book2.title, publishDate: book2.publishDate, comment: book2.comment);
  print(clone == book2);

  final clone2 = book2.copyWith();
  print(clone2 == book2);

  print(book4 == book2);
  print(book5 == book2);
  book4.title = 'Bible';
  print(book5.hashCode);
  print(book4.hashCode);
  print(book2.hashCode);

}
