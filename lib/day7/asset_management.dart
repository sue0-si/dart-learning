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

abstract class TangibleAsset extends Asset {

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
  double weight;

  Thing({
    required this.weight,
  });

  double get getWeight {
    return weight;
  }
  set setWeight(double weight) {
    this.weight = weight;
  }

}



void main() {

}