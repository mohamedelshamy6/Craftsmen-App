class UserUpdateModel {
  final String? name;
  final String? password;
  final String? address;
  final String? thumbnail;
  final String? bio;
  final String? phone;

  UserUpdateModel({
    this.name,
    this.password,
    this.address,
    this.thumbnail,
    this.bio,
    this.phone,
  });

  factory UserUpdateModel.fromJson(Map<String, dynamic> json) {
    return UserUpdateModel(
      name: json['name'],
      password: json['password'],
      address: json['address'],
      thumbnail: json['thumbnail'],
      bio: json['bio'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name ?? "",
      'password': password ,
      'address': address ?? "",
      'thumbnail': thumbnail ?? "",
      'bio': bio ?? "",
      'phone': phone ?? "",
    };
  }
}
