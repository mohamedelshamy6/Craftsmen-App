import 'package:flutter/foundation.dart';
import 'package:sw_project/models/users/users_login_model.dart';
import 'package:sw_project/repositories/users/user_login.dart';

class UserLoginViewModel extends ChangeNotifier {
  final UserLoginRepository _userRepository;

  UserLoginViewModel({required UserLoginRepository userLoginRepository})
      : _userRepository = userLoginRepository;

  String? _loginErrorMessage;

  String? get loginErrorMessage => _loginErrorMessage;

  Future<void> login(UserLoginModel userLoginModel) async {
    try {
      await _userRepository.userLogin(userLoginModel);
    } catch (e) {
      _loginErrorMessage = e.toString();
    }
    notifyListeners();
  }
}
