import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future newOrder(String token) async {
  var endpoint = '$url/orders';
  var response = await http.post(Uri.parse(endpoint), body: {
    "workerId": '2',
  }, headers: {
    'Authorization': 'Bearer $token',
  });
  print(response.headers);
  print('------------------------------');
  print(response.body);
}
