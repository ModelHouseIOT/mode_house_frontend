import 'dart:convert';

List<UserProfile> userProfileFromJson(String str) => List<UserProfile>.from(
    json.decode(str).map((x) => UserProfile.fromJson(x)));

String userProfileToJson(List<UserProfile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserProfile {
  int id;
  String firstName;
  String lastName;
  String gender;
  String phoneNumber;
  int accountId;
  String image;
  bool accountStatus;
  String lastLogin;
  String registrationDate;
  UserProfile({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.phoneNumber,
    required this.accountId,
    required this.image,
    required this.accountStatus,
    required this.lastLogin,
    required this.registrationDate,
  });
  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        image: json["image"],
        gender: json["gender"],
        phoneNumber: json["phoneNumber"],
        registrationDate: json["registrationDate"],
        lastLogin: json["lastLogin"],
        accountStatus: json["accountStatus"],
        accountId: json["accountId"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "gender": gender,
        "phoneNumber": phoneNumber,
        "accountId": accountId,
        "image": image,
        "accountStatus": accountStatus,
        "lastLogin": lastLogin,
        "registrationDate": registrationDate,
      };
}
