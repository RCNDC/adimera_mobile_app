import 'package:adimera_mobile_app/models/Cart.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class WishlistScreen extends StatefulWidget {
  static String routeName = "/cart";

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      // bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      toolbarHeight: MediaQuery.of(context).size.height / 24,
      title: Column(
        children: [
          Text(
            "Your Wish List",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
