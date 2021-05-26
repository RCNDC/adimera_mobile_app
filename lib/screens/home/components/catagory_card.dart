import 'package:adimera_mobile_app/screens/home/components/Main_Catagory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CatagoryCard extends StatelessWidget {
  final CatagoryElement catagory;
  final Function press;
  const CatagoryCard({
    Key? key,
    required this.catagory,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: bgcolor2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(kDefaultPaddin),
                      child: Hero(
                        tag: "${catagory.id}",
                        child: Image.asset("assets/icons/logo.png"),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      // horizontal: kDefaultPaddin * 0.5,
                                      vertical: kDefaultPaddin * 0.5),
                                  decoration: BoxDecoration(
                                    color: bgcolor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    catagory.catagoryName.trim(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        )),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
