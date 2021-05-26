import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/models/Cart.dart';
import 'package:adimera_mobile_app/screens/cart/components/size_config.dart';
import 'package:adimera_mobile_app/screens/details/components/cart_counter.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: SizedBox(
                width: 88,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(cart.product.images[0]),
                  ),
                ),
              ),
            ),
            // SizedBox(width: 20),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cart.product.title.trim(),
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    maxLines: 2,
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      text: "\$${cart.product.price}",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: bgcolor),
                      children: [
                        TextSpan(
                            text: " x${cart.numOfItem}",
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                  )
                ],
              ),
            ),
            CartCounter()
          ],
        ),
      ),
    );
  }
}
