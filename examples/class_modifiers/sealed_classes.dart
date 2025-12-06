// examples/class_modifiers/sealed_classes.dart
// Sealed classes + exhaustive switch.

sealed class Shape {}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);
}

class Square extends Shape {
  final double side;
  Square(this.side);
}

class Rectangle extends Shape {
  final double width;
  final double height;
  Rectangle(this.width, this.height);
}

double area(Shape shape) {
  return switch (shape) {
    Circle c => 3.14159 * c.radius * c.radius,
    Square s => s.side * s.side,
    Rectangle r => r.width * r.height,
  };
}

void main() {
  final shapes = <Shape>[Circle(2), Square(3), Rectangle(2, 5)];

  for (final s in shapes) {
    print('Area: ${area(s)}');
  }
}
