import 'package:flutter/material.dart';

import '../../models/favourites/favourites_model.dart';
import '../../repositories/favourites/add_favourite.dart';

class AddFavouriteViewModel extends ChangeNotifier {
  final AddFavouriteRepository addFavouriteRepository;

  AddFavouriteViewModel(
      {required AddFavouriteRepository addFavouriteRepository1})
      : addFavouriteRepository = addFavouriteRepository1;

  Future<void> addFavourite(
      FavouritesModel favouritesModel, String token) async {
    await addFavouriteRepository.addFavourite(favouritesModel, token);

    notifyListeners();
  }
}
