import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:model_house/Security/Interfaces/Account.dart';

class HttpAccount {
  final String urlBase = 'http://localhost:8080/api/v1/user/';
  var account = http.Client();
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
