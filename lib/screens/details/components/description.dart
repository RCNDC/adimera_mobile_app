import 'package:adimera_mobile_app/models/Main_product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  final Product mainproduct;

  const Description({Key? key, required this.mainproduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        mainproduct.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
