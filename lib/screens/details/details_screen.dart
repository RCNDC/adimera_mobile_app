import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/models/Main_product.dart';

import 'package:adimera_mobile_app/screens/details/components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: bgcolor2,
      appBar: buildAppBar(context),
      body: Body(mainproduct: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: bgcolor2,
      elevation: 0,
      leading: IconButton(
        icon: Icon(CupertinoIcons.arrow_left),
        color: bgcolor,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(CupertinoIcons.search),
          color: bgcolor,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(CupertinoIcons.cart),
          color: bgcolor,
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
