// examples/switch_expressions/concise_switch.dart
// Short switch expressions, with null-safe example.

String labelForScore(int? score) {
  return switch (score) {
    null => 'No score',
    >= 90 => 'Excellent',
    >= 75 => 'Good',
    >= 50 => 'Average',
    _ => 'Needs improvement',
  };
}

String dayType(String day) => switch (day.toLowerCase()) {
  'saturday' || 'sunday' => 'Weekend',
  _ => 'Weekday',
};

void main() {
  print(labelForScore(null));
  print(labelForScore(95));
  print(labelForScore(60));
  print(labelForScore(30));

  print(dayType('Monday'));
  print(dayType('Sunday'));
}
