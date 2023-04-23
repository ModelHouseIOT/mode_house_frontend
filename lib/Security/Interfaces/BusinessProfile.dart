import 'dart:convert';

List<BusinessProfile> businessProfileFromJson(String str) =>
    List<BusinessProfile>.from(
        json.decode(str).map((x) => BusinessProfile.fromJson(x)));

String businessProfileToJson(List<BusinessProfile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BusinessProfile {
  int id;
  String first_name;
  String last_name;
  String gender;
  String phone_number;
  int account_id;
  String image;
  bool account_status;
  String last_login;
  String registration_date;
  BusinessProfile({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.gender,
    required this.phone_number,
    required this.account_id,
    required this.image,
    required this.account_status,
    required this.last_login,
    required this.registration_date,
  });
  factory BusinessProfile.fromJson(Map<String, dynamic> json) =>
      BusinessProfile(
        id: json["id"],
        first_name: json["first_name"],
        last_name: json["last_name"],
        gender: json["gender"],
        phone_number: json["phone_number"],
        account_id: json["account_id"],
        image: json["image"],
        account_status: json["account_status"],
        last_login: json["tokenlast_login"],
        registration_date: json["registration_date"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": first_name,
        "last_name": last_name,
        "gender": gender,
        "phone_number": phone_number,
        "account_id": account_id,
        "image": image,
        "account_status": account_status,
        "last_login": last_login,
        "registration_date": registration_date,
      };
}
