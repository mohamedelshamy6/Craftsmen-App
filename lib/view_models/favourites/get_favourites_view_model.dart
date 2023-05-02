import 'package:flutter/cupertino.dart';
import 'package:sw_project/models/favourites/favourites_model.dart';
import 'package:sw_project/repositories/users/user_login.dart';

import '../../repositories/favourites/get_favorites.dart';

class FavouriteViewModel with ChangeNotifier {
  Future<List<FavouritesModel>>? favourite;

  Future<List<FavouritesModel>?> getAllFavourites() async {
    var token = await getTokenFromPrefs();
    favourite = fetchFavorites(token!);
    notifyListeners();
    return favourite;
  }
}
