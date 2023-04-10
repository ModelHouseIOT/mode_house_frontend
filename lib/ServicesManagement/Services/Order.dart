import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpOrder {
  final String urlBase = 'https://localhost:7120/api/v1/order';
  var order = http.Client();
}
