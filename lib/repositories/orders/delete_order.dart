import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

class DeleteOrderRepository {
  Future deleteOrder(String token,int id) async {
    var endpoint = '$url/orders/$id';

    var response = await http.delete(Uri.parse(endpoint), headers: {
      'Authorization': 'Bearer $token',
    });

    print('------------------------------');
    print(response.body);
    print('------------------------------');
  }
}
