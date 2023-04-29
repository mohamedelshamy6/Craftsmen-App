import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future newOrder() async {
  var endpoint = '$url/orders';
  var response = await http.post(Uri.parse(endpoint), body: {
    "workerId": '2',
  }, headers: {
    'Authorization': 'Bearer 2|pEGpVEid7e9L8DqQeQWLTWnbcUgQTE43nf2U5vEZ',
  });
  print(response.headers);
  print('------------------------------');
  print(response.body);
}
