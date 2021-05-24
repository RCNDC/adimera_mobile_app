// To parse this JSON data, do
//
//     final productImage = productImageFromJson(jsonString);

import 'dart:convert';

ProductImage productImageFromJson(String str) =>
    ProductImage.fromJson(json.decode(str));

String productImageToJson(ProductImage data) => json.encode(data.toJson());

class ProductImage {
  ProductImage({
    required this.productPhoto,
  });

  List<ProductPhoto> productPhoto;

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
        productPhoto: List<ProductPhoto>.from(
            json["productPhoto"].map((x) => ProductPhoto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "productPhoto": List<dynamic>.from(productPhoto.map((x) => x.toJson())),
      };
}

class ProductPhoto {
  ProductPhoto({
    required this.photoId,
    required this.productId,
    required this.productImage,
  });

  int photoId;
  int productId;
  String productImage;

  factory ProductPhoto.fromJson(Map<String, dynamic> json) => ProductPhoto(
        photoId: json["photoId"],
        productId: json["product_id"],
        productImage: json["product_image"],
      );

  Map<String, dynamic> toJson() => {
        "photoId": photoId,
        "product_id": productId,
        "product_image": productImage,
      };
}
