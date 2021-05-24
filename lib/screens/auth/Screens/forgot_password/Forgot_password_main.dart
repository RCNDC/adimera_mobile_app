import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/forgot_password/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgotpassmain extends StatefulWidget {
  @override
  _ForgotpassmainState createState() => _ForgotpassmainState();
}

class _ForgotpassmainState extends State<Forgotpassmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ForgotPassword(),
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
