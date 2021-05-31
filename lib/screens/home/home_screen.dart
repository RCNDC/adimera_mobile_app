import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/Wish_list/Wish_list_screen.dart';
import 'package:adimera_mobile_app/screens/cart/cart_screen.dart';
import 'package:adimera_mobile_app/screens/home/components/Drawer.dart';
import 'package:adimera_mobile_app/screens/home/components/Home_catagory.dart';
import 'package:adimera_mobile_app/screens/home/components/Search_deligates.dart';
import 'package:adimera_mobile_app/screens/Profile/profile_page.dart';
import 'package:adimera_mobile_app/screens/home/components/home_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentPage = 0;
  final _pages = [
    HomeContent(),
    // HomeCatagory(),
    ProfilePage(),
    CartScreen(),
    WishlistScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: MediaQuery.of(context).size.height / 16,
        elevation: 0,
        leading: Builder(
            builder: (con) => IconButton(
                  icon: Icon(CupertinoIcons.list_dash, color: bgcolor),
                  onPressed: () => Scaffold.of(con).openDrawer(),
                )),
        actions: <Widget>[
          IconButton(
            icon: Icon(CupertinoIcons.search, color: bgcolor),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
          IconButton(
            icon: Icon(CupertinoIcons.cart, color: bgcolor),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      body: Center(
        child: _pages[_currentPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: bgcolor,
                ),
                label: ("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: bgcolor),
                label: ("Profile")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart_fill, color: bgcolor),
                label: ("Cart")),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite, color: bgcolor),
                label: ("Wish List")),
          ],
          currentIndex: _currentPage,
          fixedColor: bgcolor,
          onTap: (int inIndex) {
            setState(() {
              _currentPage = inIndex;
            });
          }),
    );
  }
}
