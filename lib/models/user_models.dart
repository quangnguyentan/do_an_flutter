class User {
  String? id;
  String? email;
  String? password;
  String? fullName;
  String? phone;

  User({
    this.id,
    this.email,
    this.password,
    this.fullName,
    this.phone,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    fullName = json['fullName'];
    phone = json['phone'];
  }
}
