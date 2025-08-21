import 'dart:math';

void main() {
  final random = Random();
  for (int i = 0; i < 10; i++) {
    final randomNumber = random.nextInt(100);

    print('Generated Random Number: $randomNumber');

    if (randomNumber % 2 == 0) {
      computeSquareAsync(randomNumber);
    } else {
      print('The number is odd: $randomNumber');
    }
  }
}

void computeSquareAsync(int number) {
  Future.delayed(Duration(seconds: 1), () {
    final square = number * number;

    print('Square of $number is $square');
  });
}
