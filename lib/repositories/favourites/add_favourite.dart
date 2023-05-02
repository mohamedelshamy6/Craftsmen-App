import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:sw_project/models/favourites/favourites_model.dart';
import '../../common/api_url.dart';

class AddFavouriteRepository {
  Future addFavourite(FavouritesModel favouritesModel,String token) async {
    var endpoint = '$url/add-favourite';
    var response = await http.post(Uri.parse(endpoint),
        body: jsonEncode(favouritesModel.toJson()),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          'Authorization': 'Bearer $token',
        });
    print(response.headers);
    print('------------------------------');
    print(response.body);
  }
}
