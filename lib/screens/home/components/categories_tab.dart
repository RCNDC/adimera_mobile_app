import 'package:adimera_mobile_app/constants.dart';
import 'package:flutter/material.dart';

class CategoriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: TabBar(
        isScrollable: true,
        indicatorColor: bgcolorhex,
        tabs: [
          Tab(
            child: Text('All'),
          ),
          Tab(
            child: Text('Mobile Phones'),
          ),
          Tab(
            child: Text('Laptops'),
          ),
          Tab(
            child: Text('Desktops'),
          ),
          Tab(
            child: Text('helllo'),
          ),
          Tab(
            child: Text('helllo'),
          ),
          Tab(
            child: Text('helllo'),
          ),
          Tab(
            child: Text('helllo'),
          ),
        ],
      ),
    );
  }
}
