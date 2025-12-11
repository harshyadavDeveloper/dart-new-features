// examples/bonus_examples/advanced_patterns.dart
// Combining records, patterns, and when clauses.

typedef UserRecord = ({int id, String name, int? age});

String describeUser(UserRecord user) {
  return switch (user) {
    (:int id, :String name, :int? age) when age == null =>
      'User $name (id=$id) has no age set',
    (:int id, :String name, :int? age) when age! >= 18 =>
      'User $name (id=$id) is an adult ($age)',
    (:int id, :String name, :int? age) =>
      'User $name (id=$id) is a minor ($age)',
  };
}

void main() {
  final u1 = (id: 1, name: 'Harsh', age: 23);
  final u2 = (id: 2, name: 'Shravan', age: 15);
  final u3 = (id: 3, name: 'Savio', age: null);

  print(describeUser(u1));
  print(describeUser(u2));
  print(describeUser(u3));
}
