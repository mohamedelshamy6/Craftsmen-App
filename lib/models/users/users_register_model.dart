class UsersRegisterModel {
  final String? name,
      email,
      password,
      address,
      phone,
      notificationToken,
      barearToken,
      bio,
      thumbnail;
  static const int constType = 0;
  final int? type;

  UsersRegisterModel({
    required this.name,
    required this.email,
    this.thumbnail,
    required this.address,
    required this.password,
    required this.phone,
    this.type,
    this.barearToken,
    this.bio,
    required this.notificationToken,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['name'] = name ?? '';
    data['email'] = email ?? '';
    data['password'] = password ?? '';
    data['address'] = address ?? '';
    data['phone'] = phone ?? '';
    data['notificationToken'] = notificationToken ?? '';
    data['type'] = type ?? '';
    data['bio'] = bio ?? '';
    data['thumbnail'] = thumbnail ?? '';
    return data;
  }

  factory UsersRegisterModel.fromJson(Map<String, dynamic> json) {
    return UsersRegisterModel(
        name: json['name'],
        email: json['email'],
        thumbnail: json['thumbnail'],
        phone: json['phone'],
        password: json['password'],
        bio: json['bio'],
        barearToken: json['barearToken'],
        address: json['address'],
        notificationToken: json['notificationToken'],
        type: json['type']);
  }
}
