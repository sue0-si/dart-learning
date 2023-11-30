import 'dart:io';

void main() {
  var input = stdin.readLineSync();

  var a;
  var b;
  var c;
  var d;

  if (input != null) {
    var cardArray = input.split(' ');
    a = cardArray[0];
    b = cardArray[1];
    c = cardArray[2];
    d = cardArray[3];
  }
  int result = findMaxSum(a, b, c, d);
  print(result);
}

int findMaxSum(String a, String b, String c, String d) {
  var array = [a, b, c, d];
  int max = 0;

  for (int i = 0; i < 12; i++) {
    var first = int.parse(array[0] + array[1]);
    var last = int.parse(array[2] + array[3]);

    if (first + last > max) {
      max = first + last;
    }
    array = swap(array, i % 3, i % 3 + 1);
    print(array);

  }
  return max;

}

List<String> swap(List<String> array, int a, int b) {
  String temp = array[a];
  array[a] = array[b];
  array[b] = temp;
  return array;
}