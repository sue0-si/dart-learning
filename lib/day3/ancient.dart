import 'dart:io';

void main() {
  var input = stdin.readLineSync();

  var array;
  int result = 0;
  List<int> index = [];

  if (input != null) {
    for (int i = 0; i < input.length; i++) {
      if (input[i] == '+') {
        index.add(i);
      }
    }
    print(index);

    String subList;
    for (int i = 0; i <= index.length; i++) {
      if (i == 0) {
        subList = input.substring(0, index[i]);
      } else if (i == index.length){
        subList = input.substring(index[i - 1] + 1);
      } else {
        subList = input.substring(index[i - 1] + 1, index[i]);
      }
      print(subList);
      result += convert(subList);
    }

    print(result);
  }

}

int convert(String list) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] == '<') {
      sum += 10;
    } else if (list[i] == '/') {
      sum += 1;
    }
  }
  return sum;
}