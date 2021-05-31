import 'package:adimera_mobile_app/screens/home/components/categories_tab.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: CategoriesTab()),
          ],
        )
      ],
    );
  }
}
