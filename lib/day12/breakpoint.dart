import 'package:dart/day3/instance.dart';

void main() {
  final heroes = <Hero>{};
  final h1 = Hero("Superman", 100);
  final h2 = Hero("Superman", 100);

  heroes.add(h1);
  print('-------------------');

  myFunction();
  heroes.remove(h2);
}

void myFunction() {
  print('--------');
  print('-------');
}