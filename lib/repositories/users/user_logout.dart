import 'package:http/http.dart' as http;
import '../../common/api_url.dart';

class UserLogoutRepository {
  Future userLogout(token) async {
    var endpoint = '$url/users/logout';
    var response = await http.post(Uri.parse(endpoint), headers: {
      'Authorization': 'Bearer $token',
    });

    print('------------------------------');
    print(response.headers);
    print('------------------------------');
    print(response.body);
    print('------------------------------');
  }
}
