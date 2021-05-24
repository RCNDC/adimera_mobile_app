import 'package:adimera_mobile_app/Services/Api_Manager.dart';
import 'package:adimera_mobile_app/models/Main_product.dart';
import 'package:adimera_mobile_app/screens/details/details_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'item_card.dart';

class Productcarousel extends StatefulWidget {
  @override
  _ProductcarouselState createState() => _ProductcarouselState();
}

class _ProductcarouselState extends State<Productcarousel> {
  late Future<MainProduct> mainproduct;
  late CarouselController _controller;
  @override
  void initState() {
    mainproduct = ApiManager().getProduct();
    _controller = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MainProduct>(
        future: mainproduct,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CarouselSlider.builder(
              carouselController: _controller,
              itemBuilder: (context, index, realIDx) {
                var productList = snapshot.data!.products[index];
                return ItemCard(
                  product: productList,
                  // product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: productList,
                        ),
                      )),
                  key: null,
                );
              },
              options: CarouselOptions(
                  viewportFraction: 0.5,
                  height: MediaQuery.of(context).size.height / 3.2,
                  initialPage: 0,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayInterval: Duration(seconds: 8),
                  enlargeCenterPage: true,
                  autoPlay: true),
              itemCount: snapshot.data!.products.length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
