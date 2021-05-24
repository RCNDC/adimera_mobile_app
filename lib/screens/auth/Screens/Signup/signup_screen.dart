import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/Signup/components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Body(),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20),
            child: IconButton(
                color: bgcolor,
                iconSize: 30,
                icon: Icon(
                  CupertinoIcons.arrow_left_circle,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    );
  }
}
