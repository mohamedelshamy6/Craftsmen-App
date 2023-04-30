class WorkerUpdateModel {
  final String? name;
  final String? password;
  final String? address;
  final String? thumbnail;
  final String? bio;
  final String? jobName;
  final String? phone;

  WorkerUpdateModel({
    this.name,
    this.password,
    this.address,
    this.thumbnail,
    this.bio,
    this.jobName,
    this.phone,
  });

  factory WorkerUpdateModel.fromJson(Map<String, dynamic> json) {
    return WorkerUpdateModel(
      name: json['name'],
      password: json['password'],
      address: json['address'],
      thumbnail: json['thumbnail'],
      bio: json['bio'],
      phone: json['phone'],
      jobName: json['jobName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name ?? "",
      'password': password,
      'address': address ?? "",
      'thumbnail': thumbnail ?? "",
      'bio': bio ?? "",
      'phone': phone ?? "",
      'jobName': jobName ?? "",
    };
  }
}
