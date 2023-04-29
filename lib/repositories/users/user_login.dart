import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

import '../../models/users/users_login_model.dart';

String savedToken = '';

class UserLoginRepository {
  Future userLogin(UserLoginModel userLoginModel) async {
    var endpoint = '$url/users/login';
    var response = await http.post(Uri.parse(endpoint),
        body: jsonEncode(userLoginModel.toJson()),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        });
    String token = await jsonDecode(response.body)['token'];
    savedToken = token;
    await saveStringToPrefs('token', savedToken);
    print(response.body);
  }
}

Future<void> saveStringToPrefs(String key, String value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

Future<String?> getStringFromPrefs(String key) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}

Future<String?> getTokenFromPrefs() async {
  var result = await getStringFromPrefs('token');
  return result;
}
