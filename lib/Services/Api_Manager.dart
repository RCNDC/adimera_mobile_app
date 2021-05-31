import 'dart:convert';

import 'package:adimera_mobile_app/models/Main_product.dart';
import 'package:adimera_mobile_app/models/product_image.dart';
import 'package:adimera_mobile_app/screens/home/components/Main_Catagory.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<MainProduct> getProduct() async {
    var url = Uri.parse('https://api.adimera.com/user/getAllProducts/0');
    var productModel;
    try {
      var client = http.Client();
      var response = await client.get(url);
      if (response.statusCode == 200) {
        var jasonbody = response.body;
        var jsonMap = json.decode(jasonbody);
        productModel = MainProduct.fromJson(jsonMap);
      }
    } catch (Exception) {
      print(Exception);
      return productModel;
    }
    return productModel;
  }

  Future<ProductImage> getProductImage() async {
    var url = Uri.parse('https://api.adimera.com/user/getProductImages/172');
    var productimageModel;
    try {
      var client = http.Client();
      var response = await client.get(url);
      if (response.statusCode == 200) {
        var jasonbody = response.body;
        var jsonMap = json.decode(jasonbody);
        productimageModel = ProductImage.fromJson(jsonMap);
      }
    } catch (Exception) {
      print(Exception);
      return productimageModel;
    }
    return productimageModel;
  }

  Future<Catagory> getCatagory() async {
    var url = Uri.parse('https://api.adimera.com/user/getAllCatagory');
    var catagoryModel;
    try {
      var client = http.Client();
      var response = await client.get(url);
      if (response.statusCode == 200) {
        var jasonbody = response.body;
        var jsonMap = json.decode(jasonbody);
        catagoryModel = Catagory.fromJson(jsonMap);
      }
    } catch (Exception) {
      print(Exception);
      return catagoryModel;
    }
    return catagoryModel;
  }
}
