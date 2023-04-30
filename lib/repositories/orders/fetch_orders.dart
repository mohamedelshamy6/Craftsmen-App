import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future fetchOrders(String token) async {
  var endpoint = '$url/orders';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });
  var result = jsonDecode(response.body);
  print(result);
}