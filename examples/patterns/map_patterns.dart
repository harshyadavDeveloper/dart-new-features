// examples/patterns/map_patterns.dart
// Map patterns for extracting specific keys.

void handleUser(Map<String, Object?> json) {
  switch (json) {
    case {'name': String name, 'age': int age}:
      print('User: $name, Age: $age');
    case {'error': String message}:
      print('Error: $message');
    default:
      print('Unknown map structure: $json');
  }
}

void main() {
  final user = {'name': 'Harsh', 'age': 23};
  final error = {'error': 'Something went wrong'};
  final other = {'status': 'ok'};

  handleUser(user);
  handleUser(error);
  handleUser(other);
}
