import 'dart:io';

import 'package:http/http.dart' as http;
import '../../common/api_url.dart';

class RemoveFavouriteRepository {
  Future removeFavourite(String token, int id) async {
    var endpoint = '$url/delete-favourite/$id';
    var response = await http.delete(Uri.parse(endpoint), headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      'Authorization': 'Bearer $token',
    });
    print(response.headers);
    print('------------------------------');
    print(response.body);
  }
}
