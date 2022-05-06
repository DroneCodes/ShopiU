import 'package:flutter/material.dart';

class DrawerHead extends StatefulWidget {
  @override
  _DrawerHeadState createState() => _DrawerHeadState();
}

class _DrawerHeadState extends State<DrawerHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // image: DecorationImage(
              //   image: ,
              // )
            ),
          ),
          Text("ShopiU", style: TextStyle(color: Colors.black, fontSize: 20),),
          Text("username")
        ],
      ),
    );
  }
}
