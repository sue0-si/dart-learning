class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
  });

}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
  });

}

abstract class TangibleAsset extends Asset implements Thing {
  TangibleAsset({
    required super.name,
    required super.price,
    required super.color
  });

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
  String name;
  int price;
  String color;

  Asset({
    required this.name,
    required this.price,
    required this.color
  });
}

// //나
// abstract class IntangibleAsset extends Asset { }
//
// //다
// class Patent extends IntangibleAsset { }