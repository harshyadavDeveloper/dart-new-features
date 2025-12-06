// examples/class_modifiers/mixin_class.dart
// mixin class: can be used as both mixin and class.

mixin class Logger {
  void log(String message) {
    final now = DateTime.now().toIso8601String();
    print('[$now] $message');
  }
}

class Service with Logger {
  final String name;
  Service(this.name);

  void run() {
    log('Service $name started');
  }
}

void main() {
  final s = Service('AuthService');
  s.run();
}
