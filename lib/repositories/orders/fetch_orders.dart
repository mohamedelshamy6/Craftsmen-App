import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

import '../../models/orders/orders_model.dart';

Future<List<OrdersModel>> fetchOrders(String token) async {
  var endpoint = '$url/orders';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });
  var allOrders = jsonDecode(response.body);
  var test = allOrders['data'];

  List<OrdersModel> orderModel = [];
  for (var anOrder in test) {
    OrdersModel order = OrdersModel.fromJson(anOrder);
    orderModel.add(order);
  }
  return orderModel;
}

Future<OrdersModel> fetchOrder(String token,int id) async {
  var endpoint = '$url/orders/$id';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });
  var body = jsonDecode(response.body);
  Map<String, dynamic> test = body['data'];
  OrdersModel order = OrdersModel.fromJson(test);
  return order;
}
