import 'package:flutter/foundation.dart';
import 'package:sw_project/models/orders/new_order_model.dart';
import 'package:sw_project/repositories/orders/new_order.dart';

class NewOrdersViewModel with ChangeNotifier {
  final NewOrderRepository newOrderRepository;

  NewOrdersViewModel({required this.newOrderRepository});

  Future<void> submitNewOrder(String token, int workerId) async {
    final newOrder = NewOrder(id: workerId);
    await newOrderRepository.newOrder(token, newOrder);
    notifyListeners();
  }
}
