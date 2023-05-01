import 'package:flutter/foundation.dart';
import 'package:sw_project/models/orders/update_order.dart';
import 'package:sw_project/repositories/orders/update_order.dart';

class UpdateOrdersViewModel with ChangeNotifier {
  final UpdateOrderRepository updateOrderRepository;

  UpdateOrdersViewModel({required this.updateOrderRepository});

  Future<void> updateOrder(String token, int orderId, String newStatus) async {
    final updateModel = UpdateOrderModel(id: orderId, status: newStatus);
    await updateOrderRepository.updateOrder(token, orderId, updateModel);
    notifyListeners();
  }
}
