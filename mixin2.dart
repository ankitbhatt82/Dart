import 'dart:math';

class Calculator with BasicCalc {}

mixin BasicCalc {
  int sum(int a, int b) => a + b;
  int diff(int a, int b) => a - b;
  int prod(int a, int b) => a * b;
  double div(int a, int b) => a / b;
}

mixin scientific {
  double? squareroot(double num) =>
      num >= 0 ? sqrt(num) : throw ArgumentError("square root");
  int factorial(int n) {
    if (n == 0 || n == 1) {
      return 1;
    } else
      return n * factorial(n - 1);
  }
}

class ScientificCalculator extends Calculator with scientific {}

void main() {
  Calculator c = new Calculator();
  print('Calculator:');
  print('Sum: ${c.sum(15, 3)}');
  print('Difference: ${c.diff(15, 3)}');
  print('Product: ${c.prod(15, 3)}');
  print('Division: ${c.div(15, 3)}');

  ScientificCalculator sc = ScientificCalculator();
  print('\nScientific Calculator:');
  print('square root: ${sc.squareroot(25)}');

  print('Factorial: ${sc.factorial(5)}');
}
