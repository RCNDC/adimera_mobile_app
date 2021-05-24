import 'package:adimera_mobile_app/screens/auth/Screens/Login/components/background.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/otp/otp_screen.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_button.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_input_field.dart';
import 'package:adimera_mobile_app/screens/auth/constants.dart';
import 'package:adimera_mobile_app/screens/home/components/Fade_Page_route.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Recover Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/logo.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Please Enter your email to recover your account ",
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
            RoundedButton(
              text: "Submit",
              press: () {
                Navigator.pushReplacement(
                    context, FadePageRoute(widget: OtpScreen()));
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
