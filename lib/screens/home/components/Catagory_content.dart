import 'package:adimera_mobile_app/Services/Api_Manager.dart';
import 'package:adimera_mobile_app/constants.dart';
import 'package:adimera_mobile_app/models/Main_product.dart';
import 'package:adimera_mobile_app/models/product_image.dart';
import 'package:adimera_mobile_app/screens/details/details_screen.dart';
import 'package:adimera_mobile_app/screens/home/components/item_card.dart';
import 'package:adimera_mobile_app/screens/home/components/product_carousel.dart';
import 'package:flutter/material.dart';

class Catagorycontent extends StatefulWidget {
  @override
  _CatagorycontentState createState() => _CatagorycontentState();
}

class _CatagorycontentState extends State<Catagorycontent> {
  late Future<MainProduct> mainproduct;
  late Future<ProductImage> productimage;
// var productList = snapshot.data.products;
  @override
  void initState() {
    mainproduct = ApiManager().getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: kDefaultPaddin),
            child: Text("New Products",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultPaddin, horizontal: 10),
            child: Productcarousel(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text("All Products",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin,
                  vertical: kDefaultPaddin * 0.0002),
              child: FutureBuilder<MainProduct>(
                  future: mainproduct,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          physics: new NeverScrollableScrollPhysics(),
                          itemCount: snapshot.data!.products.length,
                          // itemCount: products.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: kDefaultPaddin,
                            crossAxisSpacing: kDefaultPaddin,
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (context, index) {
                            var productList = snapshot.data!.products[index];
                            // print();
                            return ItemCard(
                              product: productList,
                              // product: products[index],
                              press: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      product: productList,
                                    ),
                                  )),
                              key: null,
                            );
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  })),
        ],
      ),
    );
  }
}
