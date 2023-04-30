import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future updateOrder(String token) async {
  var endpoint = '$url/orders/2';
  var response = await http.put(Uri.parse(endpoint), body: {
    "status": 'V',
  }, headers: {
    'Authorization': 'Bearer $token',
  });
  print(response.headers);
  print('------------------------------');
  print(response.body);
}