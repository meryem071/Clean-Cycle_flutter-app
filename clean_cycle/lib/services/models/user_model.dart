class UserModel {

  final String? id;
  final String fname;
  final String lname;
  final String username;
  final String email;
  final String password;

  const UserModel({
    this.id,
    required this.fname,
    required this.lname,
    required this.username,
    required this.email,
    required this.password,
  });

  toJson() {
    return {
      "fname": fname,
      "lname": lname,
      "username": username,
      "email": email,
      "password": password
    };
  }
}
