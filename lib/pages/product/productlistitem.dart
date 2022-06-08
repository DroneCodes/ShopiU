import 'package:flutter/material.dart';
import 'package:moni_test/pages/product/pages/gaming.dart';

class ProductList extends StatelessWidget {
  final String imageurl;
  final String item;
  final String subtitle;
  final Function press;

  const ProductList({Key? key, required this.imageurl, required this.item, required this.subtitle, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {press();},
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(imageurl),
          ),
          title: Text(item),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}


// Navigator.push(context,
//     MaterialPageRoute(builder: (context) {
//       return Gaming();
//     }));