import 'package:dart/day15/DTO/mask_dto.dart';
import 'package:dart/day15/data_source/mask_api.dart';
import 'package:dart/day15/mapper/mask_mapper.dart';
import 'package:dart/day15/model/store.dart';

void main() async {
  // api 통신
  final api = MaskApi();

  // json => dto
  final MaskDto dto = await api.getMaskInfoResult();

  // dto => mapper => model class
  final List<Store> masks = dto.stores?.map((e) => e.toStore()).toList() ?? [];

  print(masks.toString());
}