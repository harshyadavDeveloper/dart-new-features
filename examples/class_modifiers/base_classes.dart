// examples/class_modifiers/base_classes.dart
// base class: can only be extended, implemented, or mixed in
// within the same library (file or package library).

base class Animal {
  final String name;
  Animal(this.name);

  void speak() {
    print('$name makes a sound');
  }
}

base class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void speak() {
    print('$name barks');
  }
}

void main() {
  final dog = Dog('Bruno');
  dog.speak();
}
