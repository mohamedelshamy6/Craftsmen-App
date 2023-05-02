class WorkerRegisterModel {
  final String? name,
      email,
      password,
      address,
      phone,
      notificationToken,
      barearToken,
      bio,
      jobName,
      thumbnail;
  static const int constType = 1;
  final int? type;

  WorkerRegisterModel({
    required this.name,
    required this.email,
    this.thumbnail,
    required this.address,
    required this.password,
    required this.phone,
    required this.jobName,
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
    data['jobName'] = jobName ?? '';
    return data;
  }

  factory WorkerRegisterModel.fromJson(Map<String, dynamic> json) {
    return WorkerRegisterModel(
        name: json['name'],
        email: json['email'],
        thumbnail: json['thumbnail'],
        phone: json['phone'],
        password: json['password'],
        bio: json['bio'],
        barearToken: json['barearToken'],
        address: json['address'],
        notificationToken: json['notificationToken'],
        type: json['type'],
        jobName: json['jobName']);
  }
}
