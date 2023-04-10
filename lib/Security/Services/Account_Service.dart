import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpAccount {
  final String urlBase = 'https://localhost:7120/api/v1/accounts';
  var account = http.Client();
}
