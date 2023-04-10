import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpBusinessProfile {
  final String urlBase = 'https://localhost:7120/api/v1/businessProfile';
  var businessProfile = http.Client();
}
