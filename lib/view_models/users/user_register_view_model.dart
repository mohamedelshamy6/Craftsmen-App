import 'package:flutter/material.dart';
import 'package:sw_project/models/users/users_register_model.dart';
import 'package:sw_project/repositories/users/user_register.dart';

class UserRegisterViewModel extends ChangeNotifier {
  final UserRegisterRepository _userRegisterRepository;

  UserRegisterViewModel({required UserRegisterRepository userRegisterRepository})
      : _userRegisterRepository = userRegisterRepository;

  String? _registerErrorMessage;
  String? get registerErrorMessage => _registerErrorMessage;

  Future<void> registerUser(UsersRegisterModel usersRegisterModel) async {
    try {
      await _userRegisterRepository.userRegister(usersRegisterModel);
    } catch (error) {
      _registerErrorMessage = error.toString();
    }
    notifyListeners();
  }
}