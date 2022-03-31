import 'dart:convert';

import 'package:courier_service/models/api_models/booking_in_api_model.dart';
import 'package:courier_service/models/api_models/create_booking_out_api_model.dart';
import 'package:courier_service/res/uris.dart';
import 'package:http/http.dart' as http;

class BookingRepository {
  Future<BookingInApiModel> createBooking(
      CreateBookingOutApiModel payload) async {
    http.Response res = await http
        .post(createBookingEndpoint, body: json.encode(payload.toJson()), headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    });
    return BookingInApiModel.fromJson(jsonDecode(res.body));
  }
}
