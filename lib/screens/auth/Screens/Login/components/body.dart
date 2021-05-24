import 'package:adimera_mobile_app/screens/auth/Screens/Login/components/background.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/Signup/signup_screen.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/forgot_password/Forgot_password_main.dart';
import 'package:adimera_mobile_app/screens/auth/components/already_have_an_account_acheck.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_button.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_input_field.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_password_field.dart';
import 'package:adimera_mobile_app/screens/auth/constants.dart';
import 'package:adimera_mobile_app/screens/home/components/Fade_Page_route.dart';
import 'package:adimera_mobile_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
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
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, FadePageRoute(widget: Forgotpassmain()));
              },
              child: Text(
                "I forgot My password ",
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.pushReplacement(
                    context, FadePageRoute(widget: HomeScreen()));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
