import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/Welcome/components/body.dart';
import 'package:adimera_mobile_app/screens/home/components/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      body: Stack(
        children: [
          Body(),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20),
            child: Builder(
                builder: (con) => IconButton(
                      icon: Icon(CupertinoIcons.list_dash,
                          size: 30, color: bgcolor),
                      onPressed: () => Scaffold.of(con).openDrawer(),
                    )),
          )
        ],
      ),
    );
  }
}
