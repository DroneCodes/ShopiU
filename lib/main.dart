import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moni_test/home.dart';


void main() {
  runApp(MoniTest());
}

class MoniTest extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "ShopiU",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

