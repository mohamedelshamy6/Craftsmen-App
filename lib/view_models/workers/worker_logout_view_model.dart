import 'package:flutter/foundation.dart';

import '../../repositories/workers/worker_logout.dart';

class WorkerLogoutViewModel extends ChangeNotifier {
  final WorkerLogoutRepository _workerLogoutRepository;

  WorkerLogoutViewModel(
      {required WorkerLogoutRepository workerLogoutRepository})
      : _workerLogoutRepository = workerLogoutRepository;

  String? _logoutErrorMessage;

  String? get logoutErrorMessage => _logoutErrorMessage;

  Future<void> logout(String token) async {
    try {
      await _workerLogoutRepository.workerLogout(token);
    } catch (e) {
      _logoutErrorMessage = e.toString();
    }
    notifyListeners();
  }
}
