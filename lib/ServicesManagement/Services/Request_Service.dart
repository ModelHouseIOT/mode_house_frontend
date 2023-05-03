import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpRequest {
  final String urlBase = 'https://localhost:7120/api/v1/user';
  var request = http.Client();
}
