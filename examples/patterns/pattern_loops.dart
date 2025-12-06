// examples/patterns/pattern_loops.dart
// Using patterns inside for-in loops.

void printPoints(List<({int x, int y})> points) {
  for (final (:x, :y) in points) {
    print('Point ($x, $y)');
  }
}

void printLabeled(List<({String label, int value})> items) {
  for (final (:label, :value) in items) {
    print('$label -> $value');
  }
}

void main() {
  final points = <({int x, int y})>[(x: 1, y: 2), (x: 3, y: 4)];

  final stats = <({String label, int value})>[
    (label: 'score', value: 10),
    (label: 'rank', value: 1),
  ];

  printPoints(points);
  printLabeled(stats);
}
