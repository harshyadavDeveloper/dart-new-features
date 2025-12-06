// examples/bonus_examples/when_clauses.dart
// 'when' clauses with patterns.

String classify(int value) {
  return switch (value) {
    int v when v < 0 => 'Negative',
    int v when v == 0 => 'Zero',
    int v when v.isEven => 'Positive even',
    int v => 'Positive odd',
  };
}

String grade(int? score) {
  return switch (score) {
    null => 'No score',
    int s when s >= 90 => 'A',
    int s when s >= 75 => 'B',
    int s when s >= 50 => 'C',
    int _ => 'D',
  };
}

void main() {
  print(classify(-5));
  print(classify(0));
  print(classify(2));
  print(classify(3));

  print(grade(null));
  print(grade(95));
  print(grade(80));
  print(grade(40));
}
