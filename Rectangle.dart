import 'Shape.dart';

class Rectangle extends Shape {
  late double width;
  late double length;

  Rectangle() : super() {
    width = 1.0;
    length = 1.0;
  }

  Rectangle.withDimensions(double width, double length) : super() {
    this.width = width;
    this.length = length;
  }

  Rectangle.withAllParams(
      double width, double length, String color, bool filled)
      : super.withParams(color, filled) {
    this.width = width;
    this.length = length;
  }

  double getWidth() {
    return width;
  }

  void setWidth(double width) {
    this.width = width;
  }

  double getLength() {
    return length;
  }

  void setLength(double length) {
    this.length = length;
  }

  @override
  double getArea() {
    return width * length;
  }

  @override
  double getPerimeter() {
    return 2 * (width + length);
  }

  @override
  String toString() {
    return "Rectangle[width=$width, length=$length, ${super.toString()}]";
  }
}
