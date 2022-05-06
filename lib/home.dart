import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/widgets/login.dart';

import 'pages/authentication/widgets/register.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("ShopiU", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),),

                    SizedBox(
                      height: 15,
                    ),

                    Text("Shopping just for you", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black),),
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 60,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FlatButton(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                      },
                      child:
                      const Text("Get Shopping",
                        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
