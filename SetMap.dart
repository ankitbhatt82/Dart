import 'dart:io';

void main() {
  File file = File('alice_in_wonderland.txt');
  List<String> words = [];

  try {
    words = file
        .readAsLinesSync()
        .join(' ')
        .replaceAll(RegExp(r'[^\w\s]'), '')
        .toLowerCase()
        .split(' ');
  } catch (e) {
    print('Error reading the file: $e');
    return;
  }
  print('All words:');
  print(words);

  print('\nWords in reverse order:');
  print(words.reversed.toList());

  print('\nPlural words:');
  print(words.where((word) => word.endsWith('s')).toList());

  var uniqueWords = words.toSet().toList();
  print('\nUnique words (${uniqueWords.length}):');
  print(uniqueWords);
}
