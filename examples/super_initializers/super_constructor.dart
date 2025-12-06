// examples/super_initializers/super_constructor.dart
// super() initializers for cleaner subclass constructors.

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

class Student extends Person {
  final String rollNumber;

  Student(super.name, super.age, this.rollNumber);
}

void main() {
  final s = Student('Harsh', 23, 'R001');
  print('Student: ${s.name}, Age: ${s.age}, Roll: ${s.rollNumber}');
}
