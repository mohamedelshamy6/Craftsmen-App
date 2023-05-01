class UpdateOrderModel {
  int? id;
  String? status;

  UpdateOrderModel({this.id, this.status});

  factory UpdateOrderModel.fromJson(Map<String, dynamic> json) {
    return UpdateOrderModel(
      id: json['id'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
    };
  }
}
