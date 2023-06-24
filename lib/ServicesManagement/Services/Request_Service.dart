import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../Shared/HttpComon.dart';
import '../Interfaces/Request.dart';

class HttpRequest {
  var request = http.Client();

  Future<List<Request>?> getAllBusinessProfileIdAndStatus(
      Long id, String status) async {
    final persitence = await SharedPreferences.getInstance();
    var uri = Uri.parse("$httpBase/business/$id/status/$status/request");
    var response = await request.get(uri, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      "Accept": "application/json",
      'Authorization': 'Bearer ${persitence.getString("token")}'
    });
    if (response.statusCode == 200) {
      var json = response.body;
      return requestFromJson(json);
    }
  }

  Future<List<Request>?> getAllUserProfileIdAndStatus(
      Long id, String status) async {
    final persitence = await SharedPreferences.getInstance();
    var uri = Uri.parse("$httpBase/user/$id/status/$status/request");
    var response = await request.get(uri, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      "Accept": "application/json",
      'Authorization': 'Bearer ${persitence.getString("token")}'
    });
    if (response.statusCode == 200) {
      var json = response.body;
      return requestFromJson(json);
    }
  }

  Future<Request?> createRequest(int userId, int businessId, String status,
      String description, bool accepted) async {
    final persitence = await SharedPreferences.getInstance();
    var uri = Uri.parse("$httpBase/user/$userId/business/$businessId/request");
    var response = await request.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          'Authorization': 'Bearer ${persitence.getString("token")}'
        },
        body: jsonEncode({
          'status': status,
          'description': description,
          'accepted': accepted
        }));
    if (response.statusCode == 200) {
      return Request.fromJson(jsonDecode(response.body));
    }
  }

  Future<Request?> updateUserProfile(int id, String status) async {
    final persitence = await SharedPreferences.getInstance();
    final String postUrl = "$httpBase/user_profile/$id";
    var uri = Uri.parse(postUrl);

    var response = await request.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          'Authorization': 'Bearer ${persitence.getString("token")}'
        },
        body: jsonEncode({'status': status}));
    if (response.statusCode == 200) {
      return Request.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
