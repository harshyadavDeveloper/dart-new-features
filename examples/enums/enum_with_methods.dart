// examples/enums/enum_with_methods.dart
// Enums with methods and switch expressions.

enum UserRole {
  guest,
  user,
  admin;

  bool get canDelete {
    return switch (this) {
      UserRole.admin => true,
      UserRole.user || UserRole.guest => false,
    };
  }

  String describe() {
    return switch (this) {
      UserRole.guest => 'Guest (read-only)',
      UserRole.user => 'User (standard access)',
      UserRole.admin => 'Admin (full access)',
    };
  }
}

void main() {
  for (final role in UserRole.values) {
    print('${role.name}: ${role.describe()}, canDelete: ${role.canDelete}');
  }
}
