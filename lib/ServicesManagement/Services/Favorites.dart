import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpFavorites {
  final String urlBase = 'https://localhost:7120/api/v1/favorites';
  var favorites = http.Client();
}
