import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';
import 'package:sw_project/models/users/users_model.dart';

Future<List<UserModel>> fetchUsers(String token) async {
  var endpoint = '$url/user';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });
  var allUsers = jsonDecode(response.body);
  Map test=allUsers['data'];
  List test2=[];
  test2.add(test);
  List<UserModel> userModel=[];
  for (var aUser in test2) {
    UserModel user = UserModel.fromJson(aUser);
    userModel.add(user);
  }
  return userModel;
}