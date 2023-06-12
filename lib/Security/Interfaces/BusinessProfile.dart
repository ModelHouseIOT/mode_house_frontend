import 'dart:convert';

List<BusinessProfile> businessProfileFromJson(String str) =>
    List<BusinessProfile>.from(
        json.decode(str).map((x) => BusinessProfile.fromJson(x)));

String businessProfileToJson(List<BusinessProfile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BusinessProfile {
  int id;
  String address;
  String description;
  String image;
  String name;
  String phoneBusiness;
  String webSite;
  int accountId;
  String registrationDate;
  BusinessProfile({
    required this.id,
    required this.address,
    required this.description,
    required this.image,
    required this.name,
    required this.phoneBusiness,
    required this.webSite,
    required this.accountId,
    required this.registrationDate,
  });
  factory BusinessProfile.fromJson(Map<String, dynamic> json) =>
      BusinessProfile(
        id: json["id"],
        address: json["address"],
        description: json["description"],
        image: json["image"],
        name: json["name"],
        phoneBusiness: json["phoneBusiness"],
        webSite: json["webSite"],
        accountId: json["accountId"],
        registrationDate: json["registrationDate"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "address": address,
        "description": description,
        "image": image,
        "name": name,
        "phoneBusiness": phoneBusiness,
        "webSite": webSite,
        "accountId": accountId,
        "registrationDate": registrationDate,
      };
}
