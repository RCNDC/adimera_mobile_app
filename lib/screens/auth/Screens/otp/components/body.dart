import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/otp/components/size_config.dart';
import 'package:adimera_mobile_app/screens/home/components/Fade_Page_route.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(minutes: 5));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              Text(
                "Password Recover Code",
                style: headingStyle,
              ),
              Text("We have sent a 4 digit code to your email"),
              Countdown(
                animation: StepTween(
                  begin: 5 * 60,
                  end: 0,
                ).animate(_controller),
              ),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight / 7),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, FadePageRoute(widget: OtpForm()));
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Countdown extends AnimatedWidget {
  Countdown({key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${(clockTimer.inSeconds.remainder(60) % 60).toString().padLeft(2, '0')}';

    return Text(
      "$timerText",
      style: TextStyle(
        fontSize: 50,
        color: bgcolor,
      ),
    );
  }
}
