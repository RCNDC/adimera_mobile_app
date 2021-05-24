// To parse this JSON data, do
//
//     final mainProduct = mainProductFromJson(jsonString);

import 'dart:convert';

MainProduct mainProductFromJson(String str) =>
    MainProduct.fromJson(json.decode(str));

String mainProductToJson(MainProduct data) => json.encode(data.toJson());

class MainProduct {
  MainProduct({
    required this.products,
  });

  List<Product> products;

  factory MainProduct.fromJson(Map<String, dynamic> json) => MainProduct(
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.price,
  });

  int id;
  int categoryId;
  String name;
  String description;
  String price;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        categoryId: json["Category_id"],
        name: json["Name"],
        description: json["Description"],
        price: json["Price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Category_id": categoryId,
        "Name": name,
        "Description": description,
        "Price": price,
      };
}
