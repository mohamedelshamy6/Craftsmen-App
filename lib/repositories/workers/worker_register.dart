import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:sw_project/models/workers/worker_register_model.dart';
import '../../common/api_url.dart';

class WorkerRegisterRepository {
  Future workerRegister(WorkerRegisterModel workerRegisterModel) async {
    var endpoint = '$url/users/register';
    var response = await http.post(Uri.parse(endpoint),
        body: jsonEncode(workerRegisterModel.toJson()),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        });
    print(response.headers);
    print('------------------------------');
    print(response.body);
  }
}
