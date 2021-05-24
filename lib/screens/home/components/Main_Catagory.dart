// To parse this JSON data, do
//
//     final catagory = catagoryFromJson(jsonString);

import 'dart:convert';

Catagory catagoryFromJson(String str) => Catagory.fromJson(json.decode(str));

String catagoryToJson(Catagory data) => json.encode(data.toJson());

class Catagory {
  Catagory({
    required this.catagory,
  });

  List<CatagoryElement> catagory;

  factory Catagory.fromJson(Map<String, dynamic> json) => Catagory(
        catagory: List<CatagoryElement>.from(
            json["catagory"].map((x) => CatagoryElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "catagory": List<dynamic>.from(catagory.map((x) => x.toJson())),
      };
}

class CatagoryElement {
  CatagoryElement({
    required this.id,
    required this.catagoryName,
    required this.description,
  });

  int id;
  String catagoryName;
  String description;

  factory CatagoryElement.fromJson(Map<String, dynamic> json) =>
      CatagoryElement(
        id: json["id"],
        catagoryName: json["catagory_Name"],
        description: json["Description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "catagory_Name": catagoryName,
        "Description": description,
      };
}
