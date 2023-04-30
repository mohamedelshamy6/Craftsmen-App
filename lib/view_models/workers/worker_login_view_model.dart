import 'package:flutter/foundation.dart';
import 'package:sw_project/repositories/workers/worker_login.dart';

import '../../models/workers/worker_login_model.dart';

class WorkerLoginViewModel extends ChangeNotifier {
  final WorkerLoginRepository _workerLoginRepository;

  WorkerLoginViewModel({required WorkerLoginRepository workerLoginRepository})
      : _workerLoginRepository = workerLoginRepository;

  String? _loginErrorMessage;

  String? get loginErrorMessage => _loginErrorMessage;

  Future<void> login(WorkerLoginModel workerLoginModel) async {
    try {
      await _workerLoginRepository.workerLogin(workerLoginModel);
    } catch (e) {
      _loginErrorMessage = e.toString();
    }
    notifyListeners();
  }
}
