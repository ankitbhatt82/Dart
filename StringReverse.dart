import 'dart:io';

void main() {
  stdout.write("Enter a long string containing multiple words: ");
  String userInput = stdin.readLineSync()!;

  List<String> words = userInput.split(' ');
  List<String> reversedWords = List.from(words.reversed);

  String reversedString = reversedWords.join(' ');

  print("Reversed string: $reversedString");
}
