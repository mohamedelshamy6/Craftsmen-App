import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';
import 'package:sw_project/models/workers/worker_login_model.dart';

String savedToken = '';

class WorkerLoginRepository {
  Future workerLogin(WorkerLoginModel workerLoginModel) async {
    var endpoint = '$url/worker/login';
    var response = await http.post(Uri.parse(endpoint),
        body: jsonEncode(workerLoginModel.toJson()),
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
