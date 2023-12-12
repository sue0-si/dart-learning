import 'dart:convert';

final String json = {
 "collectionChartDataList": [
   {
     "collectionName": "collectionName",
     "collectionSalePrice": null
   },
   {
     "collectionName": "collectionName",
     "collectionSalePrice": [
       {
         "price": 59.75,
         "cvtDatetime": "2023-03-26T08:08:35"
       },
       {
         "price": 60.00,
         "cvtDatetime": "2023-03-26T08:08:45"
       }
     ]
   }
 ]
} as String;



class Test {
  String cvtDatetime;
  double price;


  Test({
    required this.cvtDatetime,
    required this.price,
  });

  Map<String, dynamic> toJson() {
    return {
      'cvtDatetime': cvtDatetime,
      'price': price,
    };
  }

  factory Test.fromJson(Map<String, dynamic> map) {
    return Test(
      cvtDatetime: map['cvtDatetime'],
      price: map['price'],
    );
  }
}

class Collection {
  String collectionName;
  double collectionSalePrice;

  Collection({
    required this.collectionName,
    required this.collectionSalePrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'collectionName': collectionName,
      'collectionPrice': collectionSalePrice,
    };
  }

  factory Collection.fromJson(Map<String, dynamic> map) {
    return Collection(
      collectionName: map['collectionName'] as String,
      collectionSalePrice: map['collectionPrice'] as double,
    );
  }

}


void main() {
  // 단순히 fromJson을 쓰면 collectionName이 정의되어 있지 않아 예외 발생
  // Collection c1 = Collection.fromJson(jsonDecode(json));
  // Test c2 = Test.fromJson(jsonDecode(json));
  // print(c2);




}