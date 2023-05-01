import 'package:flutter/foundation.dart';
import 'package:sw_project/repositories/orders/delete_order.dart';

class DeleteOrdersViewModel with ChangeNotifier {
  final DeleteOrderRepository deleteOrderRepository;

  DeleteOrdersViewModel({required this.deleteOrderRepository});

  Future<void> deleteOrder(String token, int orderId) async {
    await deleteOrderRepository.deleteOrder(token, orderId);
    notifyListeners();
  }
}
