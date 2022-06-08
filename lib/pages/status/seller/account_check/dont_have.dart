import 'package:flutter/material.dart';
import 'package:moni_test/pages/status/seller/seller_register.dart';

class DoNotHave extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an Account",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        GestureDetector(
          child: Text(
            " Sign Up",
            style: TextStyle(
              color: Colors.deepPurpleAccent,
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return SellerRegister();
                }));
          },
        ),
      ],
    );
  }
}
