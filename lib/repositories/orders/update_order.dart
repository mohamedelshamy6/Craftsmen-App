import 'package:http/http.dart' as http;
import 'package:sw_project/common/api_url.dart';

import '../../models/orders/update_order.dart';

class UpdateOrderRepository {
  Future updateOrder(
      String token, int id, UpdateOrderModel updateOrderModel) async {
    var endpoint = '$url/orders/$id';
    var response = await http.put(
      Uri.parse(endpoint),
      body: updateOrderModel.toJson(),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    print(response.headers);
    print('------------------------------');
    print(response.body);
  }
}
