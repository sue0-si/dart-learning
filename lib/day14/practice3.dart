import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

// 1. 네트워크 상의 사진 파일을 다운로드 받는 함수
// Uint8List 는 “고정 길이 unsigned 8byte integer array” 이다.
// 즉, byteArray 타입이라고 보면 된다. 즉, 메모리다.
Future<Uint8List> downloadImage(String url) async {
  print("다운로드 시작");
  final response = await http.get(Uri.parse(url));
  print("다운로드 끝");
  return response.bodyBytes;
}

// 2. 메모리에 저장된 사진을 파일로 저장하는 함수
Future<File> saveFile(Uint8List bytes, String fileName) async {
  File outputFile = File('lib/day14/$fileName');
  outputFile.writeAsBytesSync(bytes);
  return outputFile;
}

// 3. 두 가지 함수를 활용하여 다음 주소의 그림 파일을 PC에 저장하는 프로그램을 작성하시오.
// 그림 파일 주소 : https://alimipro.com/favicon.ico
// 저장 위치 : 아무데나
// 파일명 : icon.ico
void main() async {
  final startTime = DateTime.now();
  final imageBytes = await downloadImage('https://alimipro.com/favicon.ico');
  saveFile(imageBytes, 'icon.ico');
  final endTime = DateTime.now();

  // 다운로드 시간 & 용량 표시
  print("=========");
  print("소요시간 : ${endTime.difference(startTime)}");
  print("용량 : ${imageBytes.length}bytes");

}