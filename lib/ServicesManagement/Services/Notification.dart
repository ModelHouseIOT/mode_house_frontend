import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpNotification {
  final String urlBase = 'https://localhost:7120/api/v1/notification';
  var notification = http.Client();
}
