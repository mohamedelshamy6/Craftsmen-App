import 'package:flutter/material.dart';
import 'package:sw_project/repositories/workers/fetch_worker.dart';
import 'package:sw_project/repositories/workers/worker_login.dart';

import '../../models/workers/worker_model.dart';

class WorkerViewModel with ChangeNotifier {
  Future<List<WorkerModel>>? worker;
  Future<List<WorkerModel>>? sWorker;

  Future<List<WorkerModel>?> getAllWorkers() async {
    worker = fetchWorkers();

    notifyListeners();
    return worker;
  }

  Future<List<WorkerModel>?> getWorker() async {
    var token = await getTokenFromPrefs();
    sWorker = fetchWorker(token!);

    notifyListeners();
    return sWorker;
  }
}
