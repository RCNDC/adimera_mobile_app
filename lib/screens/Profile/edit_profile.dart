import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_button.dart';
import 'package:adimera_mobile_app/screens/auth/components/rounded_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          toolbarHeight: MediaQuery.of(context).size.height / 16,
          elevation: 0,
          title: Text("Edit Your Profile",
              style: TextStyle(
                  color: bgcolor, fontWeight: FontWeight.bold, fontSize: 18)),
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: bgcolor),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        CupertinoIcons.profile_circled,
                        color: bgcolor,
                        size: 120,
                      ),
                      maxRadius: 50,
                      // backgroundImage: AssetImage('assets/background.jpg'),
                    ),
                    SizedBox(width: size.width / 20),
                    IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: bgcolor,
                        ),
                        onPressed: () {})
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(
                  hintText: "Edit Your First Name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Edit Your Last Name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Edit Your Phone.No",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Edit Your Address ",
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundedButton2(
                      text: "Save",
                      press: () {},
                    ),
                    RoundedButton2(
                      text: "Dismiss",
                      press: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
