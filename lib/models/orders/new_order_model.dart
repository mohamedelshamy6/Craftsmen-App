class NewOrder {
  int? id;

  NewOrder({this.id});

  factory NewOrder.fromJson(Map<String, dynamic> json) {
    return NewOrder(
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'workerId': id,
    };
  }
}
