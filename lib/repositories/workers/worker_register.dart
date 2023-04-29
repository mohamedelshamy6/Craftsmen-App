import 'package:http/http.dart' as http;

import '../../common/api_url.dart';

Future workerRegister() async {
  var endpoint = '$url/users/register';
  var response = await http.post(Uri.parse(endpoint), body: {
    "name": 'mohamed emad51',
    "email": 'mohamedemad51@yahoo.com',
    "password": 'moh11111',
    "address": 'eltayeba nabarooo elmansoura',
    "phone": '000001128598567820',
    "notificationToken": 'vdfhnodfhwdhfwdfoidfodv',
    "role": 'w',
  });
  print(response.headers);
  print('------------------------------');
  print(response.body);
}
