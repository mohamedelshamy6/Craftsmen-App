import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';
import 'package:sw_project/models/workers/worker_update_model.dart';

Future updateWorker(WorkerUpdateModel workerUpdateModel, String token) async {
  var endpoint = '$url/worker/update';
  debugPrint(token);
  var response = await http.put(Uri.parse(endpoint), body: {
    ...workerUpdateModel.toJson()
  }, headers: {
    'Authorization': 'Bearer $token',
  });
  print(response.headers);
  print('------------------------------');
  print(response.body);
}
