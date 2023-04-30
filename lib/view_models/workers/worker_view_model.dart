import 'package:flutter/cupertino.dart';
import 'package:sw_project/repositories/users/user_login.dart';
import 'package:sw_project/repositories/workers/fetch_worker.dart';

import '../../models/workers/worker_model.dart';

class WorkerViewModel with ChangeNotifier {
  Future<List<WorkerModel>>? worker;

  Future<List<WorkerModel>?> getAllWorkers() async {
    var token = await getTokenFromPrefs();
    worker = fetchWorker(token!);

    notifyListeners();
    return worker;
  }
}
