import 'Rectangle.dart';

class Square extends Rectangle {
  Square() : super() {}

  Square.withSide(double side) : super.withDimensions(side, side) {}

  Square.withAllParams(double side, String color, bool filled)
      : super.withAllParams(side, side, color, filled) {}

  double getSide() {
    return getWidth(); // Since Square is a special case of Rectangle, we use the width as the side length.
  }

  void setSide(double side) {
    setWidth(side);
    setLength(side);
  }

  @override
  String toString() {
    return "Square[side=${getWidth()}, ${super.toString()}]";
  }
}
