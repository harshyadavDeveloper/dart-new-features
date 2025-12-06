// examples/patterns/switch_patterns.dart
// Switch with patterns, including null-safe handling.

String describeNumber(int? value) {
  return switch (value) {
    null => 'No value (null)',
    0 => 'Zero',
    1 => 'One',
    int v when v < 0 => 'Negative: $v',
    int v when v > 100 => 'Large number: $v',
    int v => 'Other number: $v',
  };
}

/// Pattern matching on a record.
String describePoint((int x, int y) point) {
  return switch (point) {
    (0, 0) => 'Origin',
    (int x, 0) => 'On X-axis at $x',
    (0, int y) => 'On Y-axis at $y',
    (int x, int y) => 'Point at ($x, $y)',
  };
}

/// validate passsword function
String validatePassword(String password) => switch (password) {
  _ when password.isEmpty => 'Password cannot be empty',
  _ when password.length < 8 => 'At least 8 characters required',
  _ when !password.contains(RegExp(r'[A-Z]')) =>
    'At least one uppercase letter required',
  _ when !password.contains(RegExp(r'[a-z]')) =>
    'At least one lowercase letter required',
  _ when !password.contains(RegExp(r'[0-9]')) => 'At least one digit required',
  _ when !password.contains(RegExp(r'[!@#\$&*~]')) =>
    'At least one special character required',
  _ when !password.contains(RegExp(r'\d')) => 'At least one number required',
  _ when password.contains(' ') => 'Password cannot contain spaces',
  _ => 'Password is valid',
};

void main() {
  print(validatePassword('testing'));
  print(describeNumber(null));
  print(describeNumber(0));
  print(describeNumber(-3));
  print(describeNumber(150));

  print(describePoint((0, 0)));
  print(describePoint((5, 0)));
  print(describePoint((0, 7)));
  print(describePoint((3, 4)));
}
