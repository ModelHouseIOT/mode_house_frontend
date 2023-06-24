import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../Shared/HttpComon.dart';
import '../Interfaces/ProjectActivity.dart';

class HttpProyectActivity {
  var proyectActivity = http.Client();

  Future<List<ProyectActivity>?> getAllByProposalId(Long proposalId) async {
    final persitence = await SharedPreferences.getInstance();
    var uri = Uri.parse("$httpBase/proposal/$proposalId/project_activity");
    var response = await proyectActivity.get(uri, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      "Accept": "application/json",
      'Authorization': 'Bearer ${persitence.getString("token")}'
    });
    if (response.statusCode == 200) {
      return proyectActivityFromJson(jsonDecode(response.body));
    }
    return null;
  }

  Future<ProyectActivity?> createProyectActivity(
      int proposalId, String status, String name, String description) async {
    final persitence = await SharedPreferences.getInstance();
    var uri = Uri.parse("$httpBase/proposal/$proposalId/project_activity");
    var response = await proyectActivity.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          'Authorization': 'Bearer ${persitence.getString("token")}'
        },
        body: jsonEncode(
            {'status': status, 'name': name, 'description': description}));
    if (response.statusCode == 200) {
      return ProyectActivity.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  Future<ProyectActivity?> updateProyectActivity(
      int id, String status, String name, String description) async {
    final persitence = await SharedPreferences.getInstance();
    final String postUrl = "$httpBase/project_activity/$id";
    var uri = Uri.parse(postUrl);

    var response = await proyectActivity.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          'Authorization': 'Bearer ${persitence.getString("token")}'
        },
        body: jsonEncode({
          'status': status,
          'isResponse': name,
          'responseDate': description
        }));
    if (response.statusCode == 200) {
      return ProyectActivity.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
