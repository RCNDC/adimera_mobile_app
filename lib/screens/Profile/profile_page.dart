import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/Profile/edit_profile.dart';
import 'package:adimera_mobile_app/screens/home/components/Drawer.dart';
import 'package:adimera_mobile_app/screens/home/components/Fade_Page_route.dart';
import 'package:adimera_mobile_app/screens/home/components/main_layout3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Mydrawer(),
        backgroundColor: Color(0xffF9F9F9),
        body: Stack(
          children: [
            Container(
              child: ClipPath(
                clipper: MyClipper2(),
                child: Container(
                  color: bgcolor,
                  height: MediaQuery.of(context).size.height / 4,
                ),
              ),
            ),
            SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16.0, top: kToolbarHeight),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          CupertinoIcons.profile_circled,
                          color: bgcolor,
                          size: 80,
                        ),
                        maxRadius: 50,
                        // backgroundImage: AssetImage('assets/background.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          'Rose Helbert',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.email_outlined),
                              onPressed: () {}),
                          Text(
                            'E-mail: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'users@adimra.com',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.phone),
                                      onPressed: () {}),
                                  Text(
                                    'Phone No',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                '+251 925002580'.trim(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.location_on_outlined),
                                      onPressed: () {}),
                                  Flexible(
                                    child: Text(
                                      'Address',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              Flexible(
                                child: Text(
                                  'Bole road Addis Ababa ,Ethiopia',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 6.0),
                          padding: EdgeInsets.symmetric(vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                            // color: Colors.orange[50],
                          ),
                          height: MediaQuery.of(context).size.height / 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: Text('History'),
                                  subtitle: Text('Previously Perchased items'),
                                  leading: Icon(Icons.history),
                                  trailing:
                                      Icon(Icons.chevron_right, color: bgcolor),
                                  onTap: () {}),
                              ListTile(
                                title: Text('Help & Support'),
                                subtitle: Text('Help start and legal support'),
                                leading: Icon(Icons.help),
                                trailing: Icon(
                                  Icons.chevron_right,
                                  color: bgcolor,
                                ),
                              ),
                              ListTile(
                                  title: Text('FAQ'),
                                  subtitle: Text('Questions and Answer'),
                                  leading: Icon(Icons.question_answer),
                                  trailing:
                                      Icon(Icons.chevron_right, color: bgcolor),
                                  onTap: () {}),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0, right: 40.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    Navigator.push(
                        context, FadePageRoute(widget: EditProfile()));
                  },
                  tooltip: 'Edit Profile',
                  child: Icon(
                    Icons.edit_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
