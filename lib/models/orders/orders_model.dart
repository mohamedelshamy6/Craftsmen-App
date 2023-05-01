class OrdersModel {
  int? id;
  int? userId;
  int? workerId;
  String? status;

  OrdersModel({this.id, this.userId, this.workerId, this.status});

  factory OrdersModel.fromJson(Map<String, dynamic> json) {
    return OrdersModel(
      id: json['id'],
      userId: json['userId'],
      workerId: json['workerId'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'workerId': workerId,
      'status': status,
    };
  }
}
