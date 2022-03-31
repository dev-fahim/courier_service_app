import 'dart:convert';

import 'package:courier_service/models/api_models/customers_list_in_api_model.dart';
import 'package:courier_service/res/uris.dart';
import 'package:http/http.dart' as http;

class CustomerRepository {
  Future<CustomersListInApiModel> getCustomers(String? contactNumber) async {
    http.Response res =
        await http.get(buildCustomersApiEndpoint(contactNumber));
    return CustomersListInApiModel.fromJson(
        jsonDecode(res.body));
  }
}
