import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/auth.dart';
import 'package:moni_test/pages/authentication/widgets/passwordfield.dart';
import 'package:moni_test/pages/authentication/widgets/roundedinputfield.dart';
import 'package:moni_test/pages/status/seller/account_check/dont_have.dart';
import 'package:moni_test/pages/status/terms_conditions/sellerconditions.dart';
import 'package:provider/provider.dart';


class SellerLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign in as a Seller",
                  style: TextStyle(
                      color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),

                SizedBox(
                  height: 30,
                ),

                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      RoundedInputField(
                        hintText: "Enter your Email",
                        icon: Icons.person, onChanged: (value) {},
                        emailcontroller: emailController,),
                      SizedBox(
                        height: 20,
                      ),
                      Passwordfield(
                        controller: passwordController,
                      ),
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
                                return SellerConditions();
                              }));
                          authService.signInWithEmailAndPassword(emailController.text, passwordController.text);
                        },
                        child:
                        const Text("Log In",
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                  ),
                ),

                SizedBox(
                  height: 8,
                ),
                DoNotHave()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
