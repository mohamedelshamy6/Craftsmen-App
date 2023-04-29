import 'package:flutter/material.dart';
import 'package:sw_project/models/users/users_register_model.dart';
import 'package:sw_project/repositories/users/user_register.dart';

class UserRegisterViewModel extends ChangeNotifier {
  final UserRegisterRepository _userRepository;

  UserRegisterViewModel({required UserRegisterRepository userRegisterRepository})
      : _userRepository = userRegisterRepository;

  String? _registerErrorMessage;
  String? get registerErrorMessage => _registerErrorMessage;

  Future<void> registerUser(UsersRegisterModel usersModel) async {
    try {
      await _userRepository.userRegister(usersModel);
    } catch (error) {
      _registerErrorMessage = error.toString();
    }
    notifyListeners();
  }
}