import 'package:adimera_mobile_app/models/Main_product.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  // final Product product;
  final Function press;
  final Product product;
  // final ProductPhoto productphoto;
  const ItemCard(
      {Key? key,
      required this.product,
      // required this.productphoto,
      required this.press
      // required this.product,

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: bgcolor2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(kDefaultPaddin),
                      child: Hero(
                          tag: "${product.id}",
                          child: Image.asset(
                            "assets/icons/logo.png",
                          )),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(
                                CupertinoIcons.cart_fill_badge_plus,
                                color: bgcolor,
                                size: 30,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                CupertinoIcons.square_favorites_alt,
                                color: bgcolor,
                                size: 30,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                child: Text(
                  // products is out demo list
                  product.name,
                  style: TextStyle(color: kTextLightColor),
                ),
              ),
              Text(
                "\$${product.price}",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
