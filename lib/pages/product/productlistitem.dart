import 'package:flutter/material.dart';
import 'package:moni_test/pages/product/pages/gaming.dart';

class ProductList extends StatelessWidget {
  final String imageurl;
  final String item;
  final String subtitle;

  const ProductList({Key? key, required this.imageurl, required this.item, required this.subtitle,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return Gaming();
            }));
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(imageurl),
        ),
        title: Text(item),
        subtitle: Text(subtitle),
      ),
    );
  }
}
