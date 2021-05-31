import 'package:adimera_mobile_app/Services/Api_Manager.dart';
import 'package:adimera_mobile_app/constants.dart';

import 'package:adimera_mobile_app/screens/home/components/Home_catagory.dart';
import 'package:adimera_mobile_app/screens/home/components/Main_Catagory.dart';
import 'package:adimera_mobile_app/screens/home/components/Search_deligates.dart';
import 'package:adimera_mobile_app/screens/home/components/catagory_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Catagories extends StatefulWidget {
  @override
  _CatagoriesState createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  late Future<Catagory> catagory;
  @override
  void initState() {
    catagory = ApiManager().getCatagory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: MediaQuery.of(context).size.height / 14,
        elevation: 0,
        title: Text(
          "Catagories",
          style: TextStyle(color: bgcolor),
        ),
        leading: Builder(
            builder: (con) => IconButton(
                  icon: Icon(CupertinoIcons.list_dash, color: bgcolor),
                  onPressed: () => Scaffold.of(con).openDrawer(),
                )),
        actions: <Widget>[
          IconButton(
            icon: Icon(CupertinoIcons.search, color: bgcolor),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPaddin / 1.5, vertical: kDefaultPaddin),
        child: FutureBuilder<Catagory>(
            future: catagory,
            builder: (context, snapshot) {
              return GridView.builder(
                itemCount: snapshot.data!.catagory.length,
                padding: EdgeInsets.all(8.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (BuildContext context, int index) {
                  var catagoryList = snapshot.data!.catagory[index];
                  return CatagoryCard(
                    catagory: catagoryList,
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeCatagory())),
                    key: null,
                  );
                },
              );
            }),
      ),
    );
  }
}
