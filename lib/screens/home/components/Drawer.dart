import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/auth/Screens/Welcome/welcome_screen.dart';
import 'package:adimera_mobile_app/screens/catagory/Catagories.dart';
import 'package:adimera_mobile_app/screens/home/components/Fade_Page_route.dart';
import 'package:adimera_mobile_app/screens/home/components/main_layout3.dart';
import 'package:adimera_mobile_app/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    double padd = MediaQuery.of(context).size.width / 5;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(10)),
          ),
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.height / 1.1,
          child: Stack(children: [
            Container(
              child: ClipPath(
                clipper: MyClipper2(),
                child: Container(
                  color: bgcolor,
                  height: MediaQuery.of(context).size.height / 3.8,
                  // width: MediaQuery.of(context).size.width / 1.5,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                      color: bgcolor,
                    ),
                  ),
                ),
                Divider(
                  color: bgcolor,
                  thickness: 2,
                  indent: 15,
                  endIndent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.home_outlined,
                          size: 28,
                          color: bgcolor,
                        ),
                        title: Text("Home"),
                        onTap: () {
                          Navigator.push(
                              context, FadePageRoute(widget: HomeScreen()));
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          CupertinoIcons.list_number_rtl,
                          size: 28,
                          color: bgcolor,
                        ),
                        title: Text("Catagories"),
                        onTap: () {
                          Navigator.push(
                              context, FadePageRoute(widget: Catagories()));
                        },
                      ),
                      ListTile(
                          leading: Icon(
                            Icons.account_circle_outlined,
                            size: 28,
                            color: bgcolor,
                          ),
                          title: Text("Account"),
                          onTap: () {
                            Navigator.push(context,
                                FadePageRoute(widget: WelcomeScreen()));
                          }),
                      ListTile(
                          leading: Icon(
                            Icons.help,
                            size: 28,
                            color: bgcolor,
                          ),
                          title: Text("Help"),
                          onTap: () {
                            Navigator.push(
                                context, FadePageRoute(widget: HomeScreen()));
                          }),
                      ListTile(
                          leading: Icon(
                            CupertinoIcons.info,
                            size: 28,
                            color: bgcolor,
                          ),
                          title: Text("About Us"),
                          onTap: () {
                            Navigator.push(
                                context, FadePageRoute(widget: HomeScreen()));
                          }),
                    ],
                  ),
                ),
                Divider(
                  color: bgcolor,
                  thickness: 2,
                  indent: 15,
                  endIndent: 15,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0, left: padd),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Icon(
                      Icons.copyright,
                      color: bgcolor,
                    ),
                    Text(
                      "  RCNDC.com",
                      style: TextStyle(color: bgcolor),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}
