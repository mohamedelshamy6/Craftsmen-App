import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future updateOrder() async {
  var endpoint = '$url/orders/2';
  var response = await http.put(Uri.parse(endpoint), body: {
    "status": 'V',
  }, headers: {
    'Authorization': 'Bearer 1|qMQRBU7JZ78pDGp66IpJxU8CcTWD9aQq1NCr63Fl',
  });
  print(response.headers);
  print('------------------------------');
  print(response.body);
}