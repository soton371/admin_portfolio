// To parse this JSON data, do
//
//     final introModel = introModelFromJson(jsonString);

import 'dart:convert';

IntroModel introModelFromJson(String str) => IntroModel.fromJson(json.decode(str));

String introModelToJson(IntroModel data) => json.encode(data.toJson());

class IntroModel {
  bool? isSuccess;
  String? message;
  Data? data;

  IntroModel({
    this.isSuccess,
    this.message,
    this.data,
  });

  factory IntroModel.fromJson(Map<String, dynamic> json) => IntroModel(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  Id? id;
  String? introOfName;
  String? name;
  String? whoAreYou;
  String? shortBio;

  Data({
    this.id,
    this.introOfName,
    this.name,
    this.whoAreYou,
    this.shortBio,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["_id"] == null ? null : Id.fromJson(json["_id"]),
    introOfName: json["introOfName"],
    name: json["name"],
    whoAreYou: json["whoAreYou"],
    shortBio: json["shortBio"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id?.toJson(),
    "introOfName": introOfName,
    "name": name,
    "whoAreYou": whoAreYou,
    "shortBio": shortBio,
  };
}

class Id {
  String? oid;

  Id({
    this.oid,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
    oid: json["\u0024oid"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024oid": oid,
  };
}
