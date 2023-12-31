import 'dart:convert';

import '../DTO/mask_dto.dart';
import 'package:http/http.dart' as http;

// return DTO
class MaskApi {
  Future<MaskDto> getMaskInfoResult() async {
    final http.Response response = await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
    final json = jsonDecode(utf8.decode(response.bodyBytes));
    return MaskDto.fromJson(json);
  }
}