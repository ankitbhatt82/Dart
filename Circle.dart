import 'shape.dart';

class Circle extends Shape {
  late double radius;

  Circle() : super() {
    radius = 1.0;
  }

  Circle.withRadius(double radius) : super() {
    this.radius = radius;
  }

  Circle.withAllParams(double radius, String color, bool filled)
      : super.withParams(color, filled) {
    this.radius = radius;
  }

  double getRadius() {
    return radius;
  }

  void setRadius(double radius) {
    this.radius = radius;
  }

  @override
  double getArea() {
    return 3.14159 * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14159 * radius;
  }

  @override
  String toString() {
    return "Circle[radius=$radius, ${super.toString()}]";
  }
}
