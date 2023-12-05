class Book extends TangibleAsset {
  String name;
  int price;
  String color;
  String isbn;

  Book({
    required this.name,
    required this.price,
    required this.color,
    required this.isbn,
  });

}

class Computer extends TangibleAsset {
  String name;
  int price;
  String color;
  String makerName;

  Computer({
    required this.name,
    required this.price,
    required this.color,
    required this.makerName,
  });

}

abstract class TangibleAsset extends Asset implements Thing {
  @override
  double get weight => weight;

  @override
  set weight(double weight) {
    weight = weight;
  }

}

abstract interface class Thing {
  double get weight;
  set weight(double weight);
}

// 가
abstract class Asset {

}

// //나
// abstract class IntangibleAsset extends Asset { }
//
// //다
// class Patent extends IntangibleAsset { }