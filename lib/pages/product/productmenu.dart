import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moni_test/pages/product/pages/gaming.dart';
import 'package:moni_test/pages/product/productlistitem.dart';


class ProductMenu extends StatefulWidget {
  const ProductMenu({Key? key}) : super(key: key);

  @override
  _ProductMenuState createState() => _ProductMenuState();
}

class _ProductMenuState extends State<ProductMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductList(
              press: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) {
                       return Gaming();
                     }));
              },
              imageurl: "assets/images/kindpng_174783.png",
              item: "Gaming",
              subtitle: "Consoles, Controllers",),
            SizedBox(
              height: 20,
            ),
            ProductList(
                press: () {},
                imageurl: "assets/images/kindpng_4886049.png",
                item: "Sneakers",
                subtitle: "Puma, Nike, Addidas")
          ],
        ),
      ),
    );
  }
}
