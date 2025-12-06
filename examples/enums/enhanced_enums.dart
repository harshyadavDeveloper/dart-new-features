// examples/enums/enhanced_enums.dart
// Enums with fields and constructors.

enum Status {
  success(200),
  notFound(404),
  error(500);

  final int code;
  const Status(this.code);
}

void main() {
  final s = Status.success;
  print('Status: $s, code: ${s.code}');

  for (final status in Status.values) {
    print('$status -> ${status.code}');
  }
}
