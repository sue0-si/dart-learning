class Calculator {
  add(int a, int b) => a + b;
  subtract(int a, int b) => a - b;
  multiply(int a, int b) => a * b;
  divide(int a, int b) => a / b;
}
void main() {
  Calculator calculator = Calculator();
  int addition = calculator.add(1, 9);
  int subtraction = calculator.subtract(5, 9);
  int multiplication = calculator.multiply(7, 3);
  double division = calculator.divide(46, 3);
  

  print(addition);
  print(subtraction);
  print(multiplication);
  print(division);
}