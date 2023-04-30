import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';
import '../../models/workers/worker_model.dart';

Future<List<WorkerModel>> fetchWorker(String token) async {
  var endpoint = '$url/worker';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });
  var allWorkers = jsonDecode(response.body);
  Map test=allWorkers['data'];
  List test2=[];
  test2.add(test);
  List<WorkerModel> workerModel=[];
  for (var aWorker in test2) {
    WorkerModel worker = WorkerModel.fromJson(aWorker);
    workerModel.add(worker);
  }
  return workerModel;
}