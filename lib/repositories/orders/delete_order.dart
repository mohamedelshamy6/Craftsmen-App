import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future deleteOrder(String token) async {
  var endpoint = '$url/orders/1';

  var response = await http.delete(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });

  print('------------------------------');
  print(response.body);
  print('------------------------------');
}
