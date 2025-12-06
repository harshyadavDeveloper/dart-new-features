// examples/records/record_equality.dart
// Record equality and using records as map keys.

void main() {
  // 1. Simple equality
  final a = (1, 2);
  final b = (1, 2);
  final c = (1, 3);

  print(a == b); // true
  print(a == c); // false

  // 2. Named record equality
  final r1 = (x: 10, y: 20);
  final r2 = (x: 10, y: 20);
  print(r1 == r2); // true

  // 3. Records as Map keys
  final points = <(int, int), String>{(0, 0): 'origin', (1, 2): 'p1'};

  print(points[(0, 0)]); // origin
  print(points[(1, 2)]); // p1
}
