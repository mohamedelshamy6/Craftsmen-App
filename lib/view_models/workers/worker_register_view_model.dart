import 'package:flutter/material.dart';
import 'package:sw_project/models/workers/worker_register_model.dart';

import '../../repositories/workers/worker_register.dart';

class WorkerRegisterViewModel extends ChangeNotifier {
  final WorkerRegisterRepository _workerRegisterRepository;

  WorkerRegisterViewModel(
      {required WorkerRegisterRepository workerRegisterRepository})
      : _workerRegisterRepository = workerRegisterRepository;

  String? _registerErrorMessage;

  String? get registerErrorMessage => _registerErrorMessage;

  Future<void> registerWorker(WorkerRegisterModel workerRegisterModel) async {
    try {
      await _workerRegisterRepository.workerRegister(workerRegisterModel);
    } catch (error) {
      _registerErrorMessage = error.toString();
    }
    notifyListeners();
  }
}
