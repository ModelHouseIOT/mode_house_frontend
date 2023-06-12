import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:model_house/Security/Interfaces/Account.dart';
import 'package:model_house/Security/Interfaces/BusinessProfile.dart';
import 'package:model_house/Security/Interfaces/UserProfile.dart';

class HttpUserProfile {
  final String urlBase = 'https://localhost:7120/api/v1/user';
  var businessProfile = http.Client();
  Future<List<UserProfile>?> getUserProfile() async {
    String accountUrl = urlBase;
    var uri = Uri.parse(accountUrl);
    var response = await businessProfile.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return userProfileFromJson(json);
    }
  }

  Future<UserProfile?> getUserProfileById(String id) async {
    final String userProfileUrl = urlBase + "/account" + '/$id';
    var uri = Uri.parse(userProfileUrl);
    var response = await businessProfile.get(uri, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      "Accept": "application/json"
    });
    if (response.statusCode == 200) {
      return UserProfile.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  Future<UserProfile?> createProfile(String firstname, String lastname,
      String phonenumber, String gender, int accountId) async {
    final String accountUrl = urlBase;
    var uri = Uri.parse(accountUrl);
    var response = await businessProfile.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json"
        },
        body: jsonEncode({
          'firstName': firstname,
          'lastName': lastname,
          'gender': gender,
          'phoneNumber': phonenumber,
          'accountId': accountId,
        }));
    if (response.statusCode == 200) {
      return UserProfile.fromJson(jsonDecode(response.body));
    }
  }

  Future<BusinessProfile?> updateUserProfile(String firstname, String lastname,
      String phonenumber, String gender, String image, int accountId) async {
    final String postUrl = urlBase + "/$accountId";
    var uri = Uri.parse(postUrl);

    var request = http.MultipartRequest('PUT', uri);
    request.files.add(await http.MultipartFile.fromPath('fotimageo', image));
    request.fields['firstName'] = firstname;
    request.fields['gender'] = lastname;
    request.fields['phoneNumber'] = phonenumber;
    request.fields['gender'] = gender;

    request.headers.addAll({
      "Content-type": "multipart/form-data",
    });
    try {
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode == 200) {
        return BusinessProfile.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      print("Algo salio mal");
    }
  }
}
