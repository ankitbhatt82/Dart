import 'dart:io';

void main() {
  print('Enter your string:');
  String? input = stdin.readLineSync();
  String reverse = input!.split('').reversed.join('');
  if (input == reverse) {
    print('the input string ${input} is palindrome');
  } else {
    print('the input string ${input} is not palindrome');
  }
}
