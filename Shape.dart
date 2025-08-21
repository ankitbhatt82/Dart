abstract class Shape {
  late String color;
  late bool filled;

  Shape() {
    color = 'default';
    filled = false;
  }

  Shape.withParams(String color, bool filled) {
    this.color = color;
    this.filled = filled;
  }

  String getColor() {
    return color;
  }

  void setColor(String color) {
    this.color = color;
  }

  bool isFilled() {
    return filled;
  }

  void setFilled(bool filled) {
    this.filled = filled;
  }

  double getArea() {
    // Implement area calculation logic for specific shapes in subclasses
    return 0.0;
  }

  double getPerimeter() {
    // Implement perimeter calculation logic for specific shapes in subclasses
    return 0.0;
  }

  @override
  String toString() {
    return "Shape[color=$color, filled=$filled]";
  }
}
