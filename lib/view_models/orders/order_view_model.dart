import 'package:flutter/material.dart';
import 'package:sw_project/models/orders/orders_model.dart';
import 'package:sw_project/repositories/orders/fetch_orders.dart';

import '../../repositories/users/user_login.dart';

class OrderViewModel with ChangeNotifier {
  Future<OrdersModel>? order;
  Future<List<OrdersModel>>? orders;
   getOrder(int id) async {
    var token = await getTokenFromPrefs();
    order = fetchOrder(token!, id);

    notifyListeners();
    return order;
  }

  Future getOrders() async {
    var token = await getTokenFromPrefs();
    orders = fetchOrders(token!);

    notifyListeners();
    return orders;
  }
}
