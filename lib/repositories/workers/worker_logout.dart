import 'package:http/http.dart' as http;
import '../../common/api_url.dart';

class WorkerLogoutRepository {
  Future workerLogout(token) async {
    var endpoint = '$url/worker/logout';
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
