class WorkerModel {
  int? id;
  String? name;
  String? email;
  String? thumbnail;
  String? phone;
  String? address;
  String? bio;
  String? jobName;
  List<String>? orders;

  WorkerModel({
    this.id,
    this.name,
    this.email,
    this.thumbnail,
    this.phone,
    this.address,
    this.bio,
    this.jobName,
    this.orders,
  });

  factory WorkerModel.fromJson(Map<String, dynamic> json) {
    return WorkerModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      thumbnail: json['thumbnail'],
      phone: json['phone'],
      address: json['address'],
      bio: json['bio'],
      jobName: json['jobName'],
      orders: List<String>.from(json['orders'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'thumbnail': thumbnail,
      'phone': phone,
      'address': address,
      'bio': bio,
      'jobName': jobName,
      'orders': orders,
    };
  }
}