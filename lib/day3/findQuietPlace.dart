import 'dart:io';

void validate(int a, int b, int R, int x1, int x2) {
  if ( (x1 - a)^2 + (x2 - b)^2 >= R^2 ) {
    print("silent");
  } else {
    print("noisy");
  }

}

void main() {
  stdout.write('Enter number between 1 to 9> ');

  var x1;
  var x2;
  var a;
  var b;
  var R;
  var construction = stdin.readLineSync();
  if (construction != null) {
    var position = construction.split(' ');
    a = int.parse(position[0]);
    b = int.parse(position[1]);
    R = int.parse(position[2]);
  }

  var N = stdin.readLineSync();
  if (N != null) {
    for (int i = 0; i < int.parse(N); i++) {
      var shelterPosition = stdin.readLineSync();
      if (shelterPosition != null) {
        var axis = shelterPosition.split(' ');
        x1 = int.parse(axis[0]);
        x2 = int.parse(axis[1]);
      }
      validate(a, b, R, x1, x2);
    }
  }



}