import 'dart:io';

void main(List<String> args) {
  var x = 12;
  if (x > 5) {
    x = x++;
    print('the value of x is $x');
  } else {
    print('value of x is less than 5');
  }
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    sum = sum + i;
  }
  print('sum of the positive integer less than 10 is $sum');

  //address
  String address =
      'NCU, sector 23A, near rotary public school, gurugram, haryana';
  print(address);
  print(address.toUpperCase());
  print(address.toLowerCase());
  print(address.length);
  print(address.indexOf('o'));
  print(address.trim());

  print('enter your name');
  String? name = stdin.readLineSync();
  print('entered name is $name');
}
