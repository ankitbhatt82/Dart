import 'dart:async';

Future<int> calculateFactorial(int number) async {
  int factorial = 1;
  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  return factorial;
}

Future<List<int>> calculateFactors(int number) async {
  List<int> factors = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      factors.add(i);
    }
  }
  return factors;
}

void main() {
  final int number = 6;

  final factorialFuture = calculateFactorial(number);
  final factorsFuture = calculateFactors(number);

  Future.wait([factorialFuture, factorsFuture]).then((results) {
    final factorial = results[0];
    final factors = results[1];

    print('Factorial of $number is: $factorial');
    print('Factors of $number are: $factors');
  }).catchError((error) {
    print('Error: $error');
  });
}
