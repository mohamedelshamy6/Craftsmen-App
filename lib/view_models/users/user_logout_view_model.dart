import 'package:flutter/foundation.dart';
import '../../repositories/users/user_logout.dart';

class UserLogoutViewModel extends ChangeNotifier {
  final UserLogoutRepository _userLogoutRepository;

  UserLogoutViewModel({required UserLogoutRepository userLogoutRepository})
      : _userLogoutRepository = userLogoutRepository;

  String? _logoutErrorMessage;
  String? get logoutErrorMessage => _logoutErrorMessage;

  Future<void> logout(String token) async {
    try {
      await _userLogoutRepository.userLogout(token);
    } catch (e) {
      _logoutErrorMessage = e.toString();
    }
    notifyListeners();
  }
}