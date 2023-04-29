import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future deleteOrder() async {
  var endpoint = '$url/orders/1';

  var response = await http.delete(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer 1|qMQRBU7JZ78pDGp66IpJxU8CcTWD9aQq1NCr63Fl',
  });

  print('------------------------------');
  print(response.body);
  print('------------------------------');
}
