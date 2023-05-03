import 'dart:convert';

List<Account> accountFromJson(String str) =>
    List<Account>.from(json.decode(str).map((x) => Account.fromJson(x)));

String accountToJson(List<Account> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Account {
  int id;
  String emailAddress;
  bool isActive;
  String dateCreate;
  String lastLogin;
  String role;
  int userId;
  int businessProfileId;
  String? token;
  Account({
    required this.id,
    required this.emailAddress,
    required this.isActive,
    required this.dateCreate,
    required this.lastLogin,
    required this.role,
    required this.userId,
    required this.businessProfileId,
  });
  factory Account.fromJson(Map<String, dynamic> json) => Account(
        id: json["id"],
        emailAddress: json["emailAddress"],
        isActive: json["isActive"],
        userId: json["userId"],
        businessProfileId: json["businessProfileId"],
        dateCreate: json["dateCreate"],
        lastLogin: json["lastLogin"],
        role: json["role"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "emailAddress": emailAddress,
        "isActive": isActive,
        "dateCreate": dateCreate,
        "lastLogin": lastLogin,
        "role": role,
        "userId": userId,
        "businessProfileId": businessProfileId,
        "token": token,
      };
}
