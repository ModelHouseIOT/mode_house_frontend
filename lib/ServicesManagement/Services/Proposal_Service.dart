import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../Shared/HttpComon.dart';
import '../Interfaces/Proposal.dart';

class HttpProposal {
  var proposal = http.Client();

  Future<Proposal?> getAllBusinessProfileIdAndStatus(
      Long requestId, String status) async {
    final persitence = await SharedPreferences.getInstance();
    var uri = Uri.parse("$httpBase/request/$requestId/proposal");
    var response = await proposal.get(uri, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      "Accept": "application/json",
      'Authorization': 'Bearer ${persitence.getString("token")}'
    });
    if (response.statusCode == 200) {
      return Proposal.fromJson(jsonDecode(response.body));
    }
  }

  Future<Proposal?> createProposal(int requestId, String price,
      Float description, String status, bool isResponse) async {
    final persitence = await SharedPreferences.getInstance();
    var uri = Uri.parse("$httpBase/request/$requestId/proposal");
    var response = await proposal.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          'Authorization': 'Bearer ${persitence.getString("token")}'
        },
        body: jsonEncode({
          'price': price,
          'description': description,
          'status': status,
          'isResponse': isResponse
        }));
    if (response.statusCode == 200) {
      return Proposal.fromJson(jsonDecode(response.body));
    }
  }

  Future<Proposal?> updateUserProfile(
      int id,
      String proposalDate,
      String description,
      Float price,
      String status,
      bool isResponse,
      String responseDate) async {
    final persitence = await SharedPreferences.getInstance();
    final String postUrl = "$httpBase/user_profile/$id";
    var uri = Uri.parse(postUrl);

    var response = await proposal.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          'Authorization': 'Bearer ${persitence.getString("token")}'
        },
        body: jsonEncode({
          'proposalDate': proposalDate,
          'description': description,
          'price': price,
          'status': status,
          'isResponse': isResponse,
          'responseDate': responseDate
        }));
    if (response.statusCode == 200) {
      return Proposal.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
