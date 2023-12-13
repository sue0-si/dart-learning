import 'dart:convert';

final String json = '''{
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
}''';

class CollectionChartData {
  List<ChartData> collectionChartDataList;

  CollectionChartData({required this.collectionChartDataList});

  factory CollectionChartData.fromJson(Map<String, dynamic> json) {
    List<dynamic> dataList = json['collectionChartDataList'];
    List<ChartData> chartDataList = dataList
        .map((data) => ChartData.fromJson(data as Map<String, dynamic>))
        .toList();

    return CollectionChartData(collectionChartDataList: chartDataList);
  }
}

class ChartData {
  String collectionName;
  List<CollectionSalePrice>? collectionSalePrice;

  ChartData({required this.collectionName, this.collectionSalePrice});

  factory ChartData.fromJson(Map<String, dynamic> json) {
    List<dynamic>? salePriceList = json['collectionSalePrice'];

    return ChartData(
      collectionName: json['collectionName'],
      collectionSalePrice: salePriceList != null
          ? salePriceList
          .map(
            (salePrice) =>
            CollectionSalePrice.fromJson(salePrice as Map<String, dynamic>),
      )
          .toList()
          : null,
    );
  }
}

class CollectionSalePrice {
  double price;
  String cvtDatetime;

  CollectionSalePrice({required this.price, required this.cvtDatetime});

  factory CollectionSalePrice.fromJson(Map<String, dynamic> json) {
    return CollectionSalePrice(
      price: json['price'].toDouble(),
      cvtDatetime: json['cvtDatetime'],
    );
  }
}

void main() {
  // Example usage
  final jsonString = '''
  {
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
  }
  ''';

  Map<String, dynamic> jsonData = jsonDecode(jsonString);
  CollectionChartData collectionChartData = CollectionChartData.fromJson(jsonData);

  print(collectionChartData.collectionChartDataList);
}




// class Test {
//   String cvtDatetime;
//   double price;
//
//
//   Test({
//     required this.cvtDatetime,
//     required this.price,
//   });
//
//   Map<String, dynamic> toJson() {
//     return {
//       'cvtDatetime': cvtDatetime,
//       'price': price,
//     };
//   }
//
//   factory Test.fromJson(Map<String, dynamic> map) {
//     return Test(
//       cvtDatetime: map['cvtDatetime'],
//       price: map['price'],
//     );
//   }
// }
//
// class Collection {
//   String collectionName;
//   double collectionSalePrice;
//
//   Collection({
//     required this.collectionName,
//     required this.collectionSalePrice,
//   });
//
//   Map<String, dynamic> toJson() {
//     return {
//       'collectionName': collectionName,
//       'collectionPrice': collectionSalePrice,
//     };
//   }
//
//   factory Collection.fromJson(Map<String, dynamic> map) {
//     return Collection(
//       collectionName: map['collectionName'] as String,
//       collectionSalePrice: map['collectionPrice'] as double,
//     );
//   }
//
// }
