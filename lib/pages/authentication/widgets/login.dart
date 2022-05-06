
import 'package:flutter/material.dart';
import 'package:moni_test/controllers/textController.dart';
import 'package:moni_test/pages/authentication/widgets/alreadyhaveanaccountcheck.dart';
import 'package:moni_test/pages/authentication/widgets/donthaveanaccount.dart';
import 'package:moni_test/pages/authentication/widgets/passwordfield.dart';
import 'package:moni_test/pages/authentication/widgets/register.dart';
import 'package:moni_test/pages/authentication/widgets/roundedinputfield.dart';
import 'package:moni_test/pages/home_page.dart';
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),

                SizedBox(
                  height: 30,
                ),

                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Username",
                        style: TextStyle(
                            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 10,
                      ),
                      RoundedInputField(
                          hintText: "Enter your username",
                          icon: Icons.person, onChanged: (value) {}),
                      SizedBox(
                        height: 20,
                      ),
                      Passwordfield(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
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
                                return HomePage();
                              }));
                        },
                        child:
                        const Text("Log In",
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                  ),
                ),

                SizedBox(
                  height: 8,
                ),
               Donthaveanaccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}