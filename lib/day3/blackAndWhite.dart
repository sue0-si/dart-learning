import 'dart:io';

void main() {
  var input = stdin.readLineSync();
  if (input != null) {
    var size = input.split(' ');
    var height = int.parse(size[0]);
    var width = int.parse(size[1]);

    var line;
    var numArray = [];
    var a, b;

    for (int i = 0; i < height; i++) {
      line = stdin.readLineSync();
      var sizeIdv = line.split(' ');
      for (int j = 0; j < width; j++) {
        if (int.parse(sizeIdv[j]) >= 128) {
          print(1);
        } else {
          print(0);
        }
      }
    }
  }

}