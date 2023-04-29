import 'package:flutter/cupertino.dart';
import 'package:sw_project/models/users/users_model.dart';
import 'package:sw_project/repositories/users/fetch_users.dart';
import 'package:sw_project/repositories/users/user_login.dart';

class UserViewModel with ChangeNotifier {
  Future<List<UserModel>>? user;

  Future<List<UserModel>?> getAllUsers() async {
    var token = await getTokenFromPrefs();
    user = fetchUsers(token!);

    notifyListeners();
    return user;
  }
}
