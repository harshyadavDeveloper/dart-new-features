// playground/main.dart
// Quick playground to test Dart features.

(String, int) getUser() => ('Harsh', 23);

String describeNumber(int? value) {
  return switch (value) {
    null => 'No value',
    0 => 'Zero',
    int v when v > 0 => 'Positive: $v',
    int v => 'Negative: $v',
  };
}

enum Status {
  success(200),
  error(500);

  final int code;
  const Status(this.code);
}

void main() {
  print('--- Playground Ready ---');

  // 1. Record example
  final (name, age) = getUser();
  print('Record -> Name: $name, Age: $age');

  // 2. Pattern matching example
  print('Pattern Match -> ${describeNumber(10)}');
  print('Pattern Match -> ${describeNumber(null)}');

  // 3. Enum example
  final s = Status.success;
  print('Enum -> $s, Code: ${s.code}');

  // 4. Simple list destructuring
  final list = [1, 2, 3];
  switch (list) {
    case [int a, int b, ...]:
      print('List -> First two: $a, $b');
    default:
      print('List pattern did not match');
  }

  // 5. Map pattern example
  final user = {'name': 'Harsh', 'age': 23};
  switch (user) {
    case {'name': String n, 'age': int a}:
      print('Map -> User: $n, Age: $a');
  }
}
