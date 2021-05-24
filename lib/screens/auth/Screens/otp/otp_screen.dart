import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/otp/components/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class OtpScreen extends StatefulWidget {
  static String routeName = "/otp";

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(children: [
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
      ]),
    );
  }
}
