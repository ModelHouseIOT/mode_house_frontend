import 'dart:convert';

List<Request> userProfileFromJson(String str) =>
    List<Request>.from(json.decode(str).map((x) => Request.fromJson(x)));

String userProfileToJson(List<Request> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Request {
  int? id;
  String? requestAt;
  String? status;
  String? description;
  String? accepted;
  int? acceptedAt;
  String? updateAt;
  Request(
      {this.id,
      this.requestAt,
      this.status,
      this.description,
      this.accepted,
      this.acceptedAt,
      this.updateAt});
  factory Request.fromJson(Map<String, dynamic> json) => Request(
      id: json["id"],
      requestAt: json["requestAt"],
      status: json["status:"],
      description: json["description"],
      acceptedAt: json["acceptedAt"],
      updateAt: json["updateAt"]);
  Map<String, dynamic> toJson() => {
        "id": id,
        "requestAt": requestAt,
        "status": status,
        "description": description,
        "accepted": accepted,
        "acceptedAt": acceptedAt,
        "updateAt": updateAt,
      };
}
