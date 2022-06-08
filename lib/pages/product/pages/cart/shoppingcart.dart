import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text("Shopping Cart", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),)
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [

              ],
            ),
            Positioned(
              bottom: 30,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                //child: ,
              ),
            )
          ],
        )
      ],
    );
  }
}
