import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future fetchOrders() async {
  var endpoint = '$url/orders';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer 2|pEGpVEid7e9L8DqQeQWLTWnbcUgQTE43nf2U5vEZ',
  });
  var result = jsonDecode(response.body);
  print(result);
}