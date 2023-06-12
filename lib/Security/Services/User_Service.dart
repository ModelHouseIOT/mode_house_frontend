import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:model_house/Security/Interfaces/User.dart';

class HttpUser {
  final String urlBase = 'http://localhost:8080/api/v1/user/';
  var user = http.Client();

  // ignore: body_might_complete_normally_nullable
  Future<User?> signIn(String emailAddress, String password) async {
    final String accountUrl = "$urlBase/login";
    var uri = Uri.parse(accountUrl);
    var response = await user.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json"
        },
        body: jsonEncode({
          'emailAddress': emailAddress,
          'password': password,
        }));
    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  // ignore: body_might_complete_normally_nullable
  Future<User?> signUp(String emailAddress, String password) async {
    final String postUrl = "$urlBase/register";
    var uri = Uri.parse(postUrl);
    var response = await user.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json"
        },
        body: jsonEncode({
          'emailAddress': emailAddress,
          'password': password,
        }));
    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}
