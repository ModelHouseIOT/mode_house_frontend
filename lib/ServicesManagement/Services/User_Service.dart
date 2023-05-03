import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpUser {
  final String urlBase = 'https://localhost:7120/api/v1/user';
  var user = http.Client();
}
