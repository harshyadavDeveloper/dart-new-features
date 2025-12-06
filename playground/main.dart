import 'dart:io';

// ------------------- FEATURE DEMOS -------------------

void demoRecords() {
  print("\n--- RECORDS DEMO ---");
  (String, int) user = ("Harsh", 23);

  final (name, age) = user;
  print("Record -> Name: $name, Age: $age");
}

void demoPatterns() {
  print("\n--- PATTERN MATCHING DEMO ---");

  int? value = 10;

  String result = switch (value) {
    null => 'Value is null',
    0 => 'Zero',
    int v when v > 0 => 'Positive: $v',
    int v => 'Negative: $v',
  };

  print("Pattern Result: $result");
}

enum Status {
  success(200),
  error(500);

  final int code;
  const Status(this.code);
}

void demoEnums() {
  print("\n--- ENUMS DEMO ---");

  final s = Status.success;
  print("Status: $s, Code: ${s.code}");

  for (final status in Status.values) {
    print("• $status -> ${status.code}");
  }
}

void demoListPatterns() {
  print("\n--- LIST PATTERNS DEMO ---");

  final list = [1, 2, 3];

  switch (list) {
    case [int a, int b, ...]:
      print("First two values: $a, $b");
    default:
      print("Pattern did not match");
  }
}

void demoMapPatterns() {
  print("\n--- MAP PATTERNS DEMO ---");

  final user = {"name": "Harsh", "age": 23};

  switch (user) {
    case {"name": String n, "age": int a}:
      print("User -> $n ($a years old)");
    default:
      print("Not a valid user map");
  }
}

// ------------------- MENU LOGIC -------------------

void showMenu() {
  print('''
=================================
        DART FEATURE MENU
=================================
1. Records Demo
2. Pattern Matching Demo
3. Enums Demo
4. List Patterns Demo
5. Map Patterns Demo
0. Exit
---------------------------------
Enter your choice: 
''');
}

void handleChoice(String? choice) {
  switch (choice) {
    case '1':
      demoRecords();
      break;
    case '2':
      demoPatterns();
      break;
    case '3':
      demoEnums();
      break;
    case '4':
      demoListPatterns();
      break;
    case '5':
      demoMapPatterns();
      break;
    case '0':
      print("Goodbye!");
      exit(0);
    default:
      print("Invalid choice! Try again.");
  }
}

void main() {
  while (true) {
    showMenu();
    final input = stdin.readLineSync();
    handleChoice(input);
    print("\nPress ENTER to continue...");
    stdin.readLineSync();
  }
}
