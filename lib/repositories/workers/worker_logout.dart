import 'package:http/http.dart' as http;

import '../../common/api_url.dart';

Future workerLogout() async {
  var endpoint = '$url/users/logout';
  var response = await http.post(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer 1|qMQRBU7JZ78pDGp66IpJxU8CcTWD9aQq1NCr63Fl',
  });
  print('------------------------------');
  print(response.headers);
  print('------------------------------');
  print(response.body);
  print('------------------------------');
}
