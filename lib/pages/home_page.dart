import 'package:flutter/material.dart';
import 'package:moni_test/drawer/nav_drawer.dart';
import 'package:moni_test/pages/product/productmenu.dart';
import 'package:moni_test/pages/status/user_status.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ShopiU",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ProductMenu(),
    );
  }
}
