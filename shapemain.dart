import 'circle.dart';
import 'rectangle.dart';
import 'square.dart';

void main() {
  // Create instances of the Shape subclasses
  Circle circle = Circle.withAllParams(7.0, "red", true);
  Rectangle rectangle = Rectangle.withAllParams(4.0, 6.0, "blue", false);
  Square square = Square.withAllParams(3.0, "green", true);

  // Print information about the shapes
  print(circle.toString());
  print("Area: ${circle.getArea()}");
  print("Perimeter: ${circle.getPerimeter()}\n");

  print(rectangle.toString());
  print("Area: ${rectangle.getArea()}");
  print("Perimeter: ${rectangle.getPerimeter()}\n");

  print(square.toString());
  print("Area: ${square.getArea()}");
  print("Perimeter: ${square.getPerimeter()}");
}
