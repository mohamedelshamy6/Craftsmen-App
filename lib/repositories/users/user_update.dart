import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';
import 'package:sw_project/models/users/users_update_model.dart';

Future updateUser(UserUpdateModel userUpdateModel, String token) async {
  var endpoint = '$url/users/update';
  debugPrint(token);
  var response = await http.put(Uri.parse(endpoint), body: {
    ...userUpdateModel.toJson()
  }, headers: {
    'Authorization': 'Bearer $token',
  });
  print(response.headers);
  print('------------------------------');
  print(response.body);
}
