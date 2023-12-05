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
  double _weight = 20.5;

  @override
  double get getWeight => _weight;

  @override
  set setWeight(double weight) {
    _weight = weight;
  }
}

// 가
abstract class Asset {

}

//나
abstract class IntangibleAsset extends Asset {

}

//다
class Patent extends IntangibleAsset {

}

abstract interface class Thing {
  double get getWeight;
  set setWeight(double weight);
}


void main() {

}