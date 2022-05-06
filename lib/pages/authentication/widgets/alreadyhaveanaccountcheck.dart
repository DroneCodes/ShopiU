import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/widgets/login.dart';

class Alreadyhaveanaccountcheck extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Already have an Account",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        GestureDetector(
          child: Text(
            " Sign In",
            style: TextStyle(
              color: Colors.deepPurpleAccent,
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
          },
        ),
      ],
    );
  }
}
