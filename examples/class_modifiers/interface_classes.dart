// examples/class_modifiers/interface_classes.dart
// interface class: must be implemented, not extended (to respect the contract).

interface class Storage {
  void save(String key, String value) {}
  String? read(String key) {
    return null;
  }
}

class InMemoryStorage implements Storage {
  final Map<String, String> _store = {};

  @override
  void save(String key, String value) {
    _store[key] = value;
  }

  @override
  String? read(String key) {
    return _store[key];
  }
}

void main() {
  final storage = InMemoryStorage();
  storage.save('token', 'abc123');

  final token = storage.read('token');
  print('Stored token: $token');
}
