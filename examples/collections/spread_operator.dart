// examples/collections/spread_operator.dart
// Spread and null-aware spread in collections.

void main() {
  final base = [1, 2, 3];
  final extra = [4, 5];

  // 1. Simple spread
  final combined = [...base, ...extra];
  print('Combined: $combined');

  // 2. Null-aware spread
  List<int>? maybeList;
  final listWithNullAware = [0, ...?maybeList, ...base];
  print('Null-aware list: $listWithNullAware');

  // 3. Spread in sets
  final set1 = {1, 2};
  final set2 = {2, 3};
  final union = {...set1, ...set2};
  print('Union: $union');

  // 4. Spread in maps
  final map1 = {'a': 1};
  final map2 = {'b': 2};
  final merged = {...map1, ...map2};
  print('Merged: $merged');
}
