import 'package:adimera_mobile_app/Services/Api_Manager.dart';

import 'package:adimera_mobile_app/screens/home/components/Catagory_content.dart';
import 'package:adimera_mobile_app/screens/home/components/Main_Catagory.dart';
import 'package:flutter/material.dart';

class HomeCatagory extends StatefulWidget {
  @override
  _HomeCatagoryState createState() => _HomeCatagoryState();
}

class _HomeCatagoryState extends State<HomeCatagory> {
  late Future<Catagory> catagory;
  @override
  void initState() {
    catagory = ApiManager.getCatagory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Catagory>(
        future: catagory,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PageView.builder(
                pageSnapping: true,
                itemCount: snapshot.data!.catagory.length,
                itemBuilder: (context, index) {
                  var productList = snapshot.data!.catagory[index];
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          productList.catagoryName,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Catagorycontent(),
                      ),
                    ],
                  );
                });
          } else
            return Center(child: CircularProgressIndicator());
        });
  }
}
