// Write a dart program to create a class Animal with properties [id, name, color].
// Create another class called Cat and extends it from Animal. Add new properties sound in String.
//Create an object of a Cat and print all details.
class Animal {
  int id;
  String name;
  String color;
  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;
  Cat(int id, String name, String color, this.sound) : super(id, name, color);
}

void main() {
  Cat c = Cat(6, 'billi', 'pink', 'meow');
  print('cat details');
  print('ID is ${c.id}.');
  print('Name of cat is ${c.name}.');
  print('Color of cat is ${c.color}.');
  print('Sound of cat is ${c.sound}.');
}
