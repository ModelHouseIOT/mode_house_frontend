import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:model_house/Security/Interfaces/Account.dart';
import 'package:model_house/Security/Interfaces/BusinessProfile.dart';
import 'package:model_house/Shared/HttpComon.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpBusinessProfile {
  var businessProfile = http.Client();
  Future<List<BusinessProfile>?> getAllBusinessProfile() async {
    var uri = Uri.parse("$httpBase/business_profile");
    var response = await businessProfile.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return businessProfileFromJson(json);
    }
    return null;
  }

  Future<BusinessProfile?> getbusinessProfileAccountById(int id) async {
    final persitence = await SharedPreferences.getInstance();
    var uri = Uri.parse("$httpBase/account/$id/business_profile");
    var response = await businessProfile.get(uri, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      "Accept": "application/json",
      'Authorization': 'Bearer ${persitence.getString("token")}'
    });
    if (response.statusCode == 200) {
      return BusinessProfile.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  Future<BusinessProfile?> createProfile(String firstname, String lastname,
      String phonenumber, String gender, int accountId) async {
    var uri = Uri.parse("$httpBase/business_profile");
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
      return BusinessProfile.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  Future<BusinessProfile?> updateBusinessProfile(
      String firstname,
      String lastname,
      String phonenumber,
      String gender,
      String image,
      int accountId) async {
    var uri = Uri.parse("$httpBase/business_profile/$accountId");

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
    return null;
  }
}
