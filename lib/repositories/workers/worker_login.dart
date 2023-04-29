import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

Future workerLogin() async {
  var endpoint = '$url/users/login';
  var response = await http.post(Uri.parse(endpoint), body: {
    "email": 'mohamedemad51@yahoo.com',
    "password": 'moh11111',
  });
  print('------------------------------');
  print(response.headers);
  print('------------------------------');
  print(response.body);
  print('------------------------------');
}
