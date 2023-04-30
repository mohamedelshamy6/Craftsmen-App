class WorkerLoginModel {
  String email;
  String password;

  WorkerLoginModel({required this.email, required this.password});

  factory WorkerLoginModel.fromJson(Map<String, dynamic> json) {
    return WorkerLoginModel(
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
