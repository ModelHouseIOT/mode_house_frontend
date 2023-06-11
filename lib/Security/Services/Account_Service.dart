import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:model_house/Security/Interfaces/Account.dart';

class HttpAccount {
  final String urlBase = 'https://localhost:7120/api/v1/account';
  var account = http.Client();
  Future<List<Account>?> getAll() async {
    String accountUrl = urlBase;
    var uri = Uri.parse(accountUrl);
    var response = await account.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return accountFromJson(json);
    }
  }

  Future<List<Account>?> getAllBusiness() async {
    String accountUrl = urlBase + "/businessprofile";
    var uri = Uri.parse(accountUrl);
    var response = await account.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return accountFromJson(json);
    }
  }

  Future<Account?> getEmail(String id) async {
    final String postUrl = urlBase + '/$id';
    var uri = Uri.parse(postUrl);
    var response = await account.get(uri, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      "Accept": "application/json"
    });
    if (response.statusCode == 200) {
      return Account.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  // ignore: body_might_complete_normally_nullable
  Future<Account?> signIn(String email, String password) async {
    final String accountUrl = urlBase + "/sign-in";
    var uri = Uri.parse(accountUrl);
    var response = await account.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json"
        },
        body: jsonEncode({
          'emailAddress': email,
          'password': password,
        }));
    if (response.statusCode == 200) {
      return Account.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  // ignore: body_might_complete_normally_nullable
  Future<String?> signUp(String email, String password) async {
    final String postUrl = urlBase + "/sign-up";
    var uri = Uri.parse(postUrl);
    var response = await account.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json"
        },
        body: jsonEncode({
          'emailAddress': email,
          'password': password,
        }));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "error";
    }
  }
}
