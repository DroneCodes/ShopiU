import 'package:flutter/material.dart';

class ProductPageList extends StatelessWidget {

  final String name;
  final String price;
  final String imageurl;

  const ProductPageList({Key? key, required this.name, required this.price, required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage(imageurl),
      ),
      title: Text(name),
      subtitle: Text(price),
      //onTap: ,
    );
  }
}
