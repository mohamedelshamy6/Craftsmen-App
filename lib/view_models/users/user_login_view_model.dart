import 'package:flutter/foundation.dart';
import 'package:sw_project/models/users/users_login_model.dart';
import 'package:sw_project/repositories/users/user_login.dart';

class UserLoginViewModel extends ChangeNotifier {
  final UserLoginRepository _userLoginRepository;

  UserLoginViewModel({required UserLoginRepository userLoginRepository})
      : _userLoginRepository = userLoginRepository;

  String? _loginErrorMessage;

  String? get loginErrorMessage => _loginErrorMessage;

  Future<void> login(UserLoginModel userLoginModel) async {
    try {
      await _userLoginRepository.userLogin(userLoginModel);
    } catch (e) {
      _loginErrorMessage = e.toString();
    }
    notifyListeners();
  }
}
