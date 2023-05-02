import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';
import 'package:sw_project/models/favourites/favourites_model.dart';

Future<List<FavouritesModel>> fetchFavorites(String token) async {
  var endpoint = '$url/favourites';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });
  var allFavourites = jsonDecode(response.body);
  var test = allFavourites['data'];

  List<FavouritesModel> favouriteModel = [];
  for (var aFavourite in test) {
    FavouritesModel favourite = FavouritesModel.fromJson(aFavourite);
    favouriteModel.add(favourite);
  }

  return favouriteModel;
}
