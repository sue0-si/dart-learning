import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final maskInfo = await getMaskInfo();
  print(maskInfo.count);
  print(maskInfo.stores);

  // final maskJson = jsonEncode(maskInfo.toJson());
  // print(jsonEncode(maskInfo.toJson()));
}

Future<Mask> getMaskInfo() async {
  final response = await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
  final map = Mask.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  return map;
}

class Mask {
  int? count;
  List<Stores>? stores;

  Mask({this.count, this.stores});

  Mask.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['stores'] != null) {
      stores = <Stores>[];
      json['stores'].forEach((v) {
        stores!.add(Stores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    if (stores != null) {
      data['stores'] = stores!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stores {
  String? addr;
  String? code;
  String? createdAt;
  double? lat;
  double? lng;
  String? name;
  String? remainStat;
  String? stockAt;
  String? type;

  // try {
  //
  // } catch(e) {
  //
  // }

  Stores({this.addr,
    this.code,
    this.createdAt,
    this.lat,
    this.lng,
    this.name,
    this.remainStat,
    this.stockAt,
    this.type});


  Stores.fromJson(Map<String, dynamic> json) {
    addr = json['addr'];
    code = json['code'];
    createdAt = json['created_at'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    remainStat = json['remain_stat'];
    stockAt = json['stock_at'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['addr'] = addr;
    data['code'] = code;
    data['created_at'] = createdAt;
    data['lat'] = lat;
    data['lng'] = lng;
    data['name'] = name;
    data['remain_stat'] = remainStat;
    data['stock_at'] = stockAt;
    data['type'] = type;
    return data;
  }


  @override
  String toString() {
    // List<dynamic> properties = [addr, code, createdAt, lat, lng, name, remainStat, stockAt, type];
    // String result = '';
    // if (properties[0] != null) {
    //   result += 'Stores{addr: $addr, ';
    // } if (properties[1] != null) {
    //   result += 'code: $code, ';
    // }
    //
    return 'Stores{addr: $addr, code: $code, createdAt: $createdAt, lat: $lat, lng: $lng, name: $name, remainStat: $remainStat, stockAt: $stockAt, type: $type}';
  }
}