import 'dart:async';
import 'package:flutter/foundation.dart';

import '../../repositories/favourites/remove_favourite.dart';

class RemoveFavouriteViewModel extends ChangeNotifier {
  final RemoveFavouriteRepository _removeFavouriteRepository;

  RemoveFavouriteViewModel(
      {required RemoveFavouriteRepository removeFavouriteRepository})
      : _removeFavouriteRepository = removeFavouriteRepository;

  Future<void> removeFavourite(String token, int id) async {
    await _removeFavouriteRepository.removeFavourite(token, id);

    notifyListeners();
  }
}
