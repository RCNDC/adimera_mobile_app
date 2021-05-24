import 'package:adimera_mobile_app/screens/auth/Screens/Login/login_screen.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/Signup/components/background.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/Signup/components/or_divider.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/Signup/components/social_icon.dart';
import 'package:adimera_mobile_app/screens/auth/components/already_have_an_account_acheck.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_button.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_input_field.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  "assets/icons/logo.png",
                  height: size.height * 0.35,
                ),
                RoundedInputField(
                  hintText: "Your First Name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Your Last Name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Your Email",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Your Phone.No",
                  onChanged: (value) {},
                ),
                // RoundedInputField(
                //   hintText: "Your Email",
                //   onChanged: (value) {},
                // ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "SIGNUP",
                  press: () {},
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocalIcon(
                      iconSrc: "assets/icons/facebook.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/icons/google-plus.svg",
                      press: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
