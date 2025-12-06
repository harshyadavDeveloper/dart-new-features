// examples/patterns/list_destructuring.dart
// List patterns and destructuring.

void printFirstTwo(List<int> numbers) {
  switch (numbers) {
    case [int a, int b, ...]:
      print('First: $a, Second: $b');
    case [int a]:
      print('Only one element: $a');
    case []:
      print('Empty list');
    default:
      print('Other list shape');
  }
}

void sumFirstTwo(List<int> numbers) {
  switch (numbers) {
    case [int a, int b, ...]:
      print('Sum of first two: ${a + b}');
    default:
      print('Need at least two numbers');
  }
}

void main() {
  final list1 = [10, 20, 30];
  final list2 = [5];
  final list3 = <int>[];

  printFirstTwo(list1);
  printFirstTwo(list2);
  printFirstTwo(list3);

  sumFirstTwo([1, 2, 3, 4]);
  sumFirstTwo([7]);
}
