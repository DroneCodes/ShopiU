import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/auth.dart';
import 'package:moni_test/pages/authentication/widgets/alreadyhaveanaccountcheck.dart';
import 'package:moni_test/pages/authentication/widgets/passwordfield.dart';
import 'package:moni_test/pages/authentication/widgets/roundedinputfield.dart';
import 'package:moni_test/pages/status/seller/account_check/do_have.dart';
import 'package:moni_test/pages/status/seller/seller_login.dart';
import 'package:provider/provider.dart';

import '../../authentication/widgets/roundedinputemail.dart';

class SellerRegister extends StatelessWidget {
  const SellerRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/grocery-cart.png",
                height: 50,),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Start your shopping here",
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal,fontSize: 15),),],),),
              SizedBox(
                height: 60,
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
                    RoundedInput(
                      hintText: "Enter your username",
                      icon: Icons.person, onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Email",
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 10,
                    ),
                    RoundedInputField(
                      hintText: "Enter your email",
                      icon: Icons.mail, onChanged: (value) {},
                      emailcontroller: emailController,),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Password",
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 10,
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
                      onPressed: () async{
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return SellerLogin();
                            }));
                        await authService.createUserWihEmilAndPassword(emailController.text, passwordController.text);
                      },
                      child:
                      const Text("Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                ),
              ),
              DoHaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
