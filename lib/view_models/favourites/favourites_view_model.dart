import 'package:flutter/material.dart';

import '../../models/favourites/favourites_model.dart';

class FavouritesViewModel with ChangeNotifier {
  List<Favourites> favourites = [];


  void addFavourite(Favourites favourite) {
    favourites.add(favourite);
    notifyListeners();
  }

  void removeFavourite(Favourites favourite) {
    favourites.removeWhere((f) => f.id == favourite.id);
    notifyListeners();
  }
}
