import 'dart:convert';

import 'package:courier_service/models/api_models/branch_api_model.dart';
import 'package:http/http.dart' as http;

import '../res/uris.dart';

class BranchRepository {
  Future<BranchApiModel> getAllBranches(String? q) async {
    http.Response res = await http.get(buildBranchesApiEndpoint(q),
        headers: {'Authentication': 'Bearer $token'});
    return BranchApiModel.fromJson(json.decode(res.body));
  }
}
