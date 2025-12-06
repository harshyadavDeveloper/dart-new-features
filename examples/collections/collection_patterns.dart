// examples/collections/collection_patterns.dart
// Using collection patterns in switch.

String describeList(List<int> list) {
  return switch (list) {
    [] => 'Empty list',
    [int single] => 'Single value: $single',
    [int first, int second, ...] => 'Starts with $first and $second',
  };
}

String describeMap(Map<String, Object?> map) {
  return switch (map) {
    {'type': 'user', 'name': String name} => 'User map with name: $name',
    {'type': 'error', 'code': int code} => 'Error with code: $code',
    _ => 'Unknown map: $map',
  };
}

void main() {
  print(describeList([]));
  print(describeList([5]));
  print(describeList([1, 2, 3]));

  print(describeMap({'type': 'user', 'name': 'Harsh'}));
  print(describeMap({'type': 'error', 'code': 404}));
  print(describeMap({'other': true}));
}
