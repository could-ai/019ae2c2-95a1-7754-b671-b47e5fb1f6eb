// User model to represent logged-in user data
class User {
  String name;
  String email;
  String role; // 'Student' or 'Teacher' for role-based features

  User(this.name, this.email, this.role);
}