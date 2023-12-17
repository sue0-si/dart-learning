import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

@JsonSerializable(explicitToJson: true)
class Store {
  String code;
  String name;
  String stock;
  
  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
  
  Map<String, dynamic> toJson() => _$StoreToJson(this);

  Store({
    required this.code,
    required this.name,
    required this.stock,
  });

  @override
  String toString() {
    return 'Store{code: $code, name: $name, stock: $stock}';
  }
}