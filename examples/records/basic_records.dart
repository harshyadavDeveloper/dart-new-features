// examples/records/basic_records.dart
// Basic record usage: returning and destructuring records.

/// Returns a record with (name, age).
(String, int) getUser() {
  return ('Harsh', 23);
}

/// Returns a record with numeric values.
(int, int) addAndMultiply(int a, int b) {
  final sum = a + b;
  final product = a * b;
  return (sum, product);
}

void main() {
  // 1. Destructure a simple record
  final (name, age) = getUser();
  print('Name: $name, Age: $age');

  // 2. Use the $1, $2 getters
  final userRecord = getUser();
  print('First field: ${userRecord.$1}');
  print('Second field: ${userRecord.$2}');

  // 3. Use record as multiple-return helper
  final (sum, product) = addAndMultiply(3, 4);
  print('Sum: $sum, Product: $product');
}
