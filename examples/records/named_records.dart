// examples/records/named_records.dart
// Named records: access by field name.

/// Returns a named record (name: ..., age: ...)
({String name, int age}) getProfile() {
  return (name: 'Harsh', age: 23);
}

/// Mixed record: positional + named fields.
(int, {String label}) taggedValue(int value, String label) {
  return (value, label: label);
}

void main() {
  // 1. Named record
  final profile = getProfile();
  print('Name: ${profile.name}');
  print('Age: ${profile.age}');

  // 2. Destructure named record
  final (:name, :age) = getProfile();
  print('Destructured => $name, $age');

  // 3. Mixed record
  final mixed = taggedValue(10, 'score');
  print('Positional: ${mixed.$1}, Label: ${mixed.label}');

  // 4. Destructure mixed record
  final (value, :label) = taggedValue(99, 'rank');
  print('Value: $value, Label: $label');
}
