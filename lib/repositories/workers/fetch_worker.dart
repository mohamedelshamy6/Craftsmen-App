import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';
import '../../models/workers/worker_model.dart';

Future<List<WorkerModel>> fetchWorkers() async {
  var endpoint = '$url/workers';
  var response = await http.get(
    Uri.parse(endpoint),
  );
  var allWorkers = jsonDecode(response.body);
  var test = allWorkers['data'];

  List<WorkerModel> workerModel = [];
  for (var aWorker in test) {
    WorkerModel worker = WorkerModel.fromJson(aWorker);
    workerModel.add(worker);
  }
  return workerModel;
}

Future<List<WorkerModel>> fetchWorker(String token) async {
  var endpoint = '$url/user';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });
  var worker = jsonDecode(response.body);
  Map test = worker['data'];
  List test2 = [];
  test2.add(test);
  List<WorkerModel> workerModel = [];
  for (var aWorker in test2) {
    WorkerModel worker = WorkerModel.fromJson(aWorker);
    workerModel.add(worker);
  }
  return workerModel;
}
