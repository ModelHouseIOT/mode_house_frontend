import 'dart:convert';

List<BusinessProfileInterface> businessProfileFromJson(String str) =>
    List<BusinessProfileInterface>.from(
        json.decode(str).map((x) => BusinessProfileInterface.fromJson(x)));

String businessProfileToJson(List<BusinessProfileInterface> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BusinessProfileInterface {
  int id;
  String name;
  String description;
  String address;
  String webSite;
  String image;
  String foundationDate;
  int accountId;
  BusinessProfileInterface({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.webSite,
    required this.image,
    required this.foundationDate,
    required this.accountId,
  });
  factory BusinessProfileInterface.fromJson(Map<String, dynamic> json) =>
      BusinessProfileInterface(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        address: json["address"],
        webSite: json["webSite"],
        image: json["image"],
        foundationDate: json["foundationDate"],
        accountId: json["accountId"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "address": address,
        "webSite": webSite,
        "image": image,
        "foundationDate": foundationDate,
        "accountId": accountId,
      };
}
