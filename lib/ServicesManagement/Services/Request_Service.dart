import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpRequest {
  var request = http.Client();
  //Future<UserProfile?> getUserProfileById(int id) async {
  //  final persitence = await SharedPreferences.getInstance();
  //  var uri = Uri.parse('$httpBase/user/$id/user_profile');
  //  var response = await businessProfile.get(uri, headers: {
  //    'Content-Type': 'application/json; charset=UTF-8',
  //    'Accept': 'application/json',
  //    'Authorization':
  //        'Bearer ${persitence.getString("token") == null ? null : persitence.getString("token")}'
  //  });
  //  print(persitence.getString("token"));
  //  if (response.statusCode == 200) {
  //    return UserProfile.fromJson(jsonDecode(response.body));
  //  }
  //  return null;
  //}
}
