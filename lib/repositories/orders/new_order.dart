import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';
import 'package:sw_project/models/orders/new_order_model.dart';

class NewOrderRepository {
  Future newOrder(String token, NewOrder newOrder) async {
    var endpoint = '$url/orders';
    var response =
        await http.post(Uri.parse(endpoint), body: newOrder.toJson(), headers: {
      'Authorization': 'Bearer $token',
    });
    print(response.headers);
    print('------------------------------');
    print(response.body);
  }
}
