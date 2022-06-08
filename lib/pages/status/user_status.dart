import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/widgets/login.dart';
import 'package:moni_test/pages/status/seller/seller_login.dart';
import 'package:moni_test/pages/status/terms_conditions/buyerconditions.dart';
import 'package:moni_test/pages/status/terms_conditions/sellerconditions.dart';


class UserStatus extends StatelessWidget {
  const UserStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:  Center(
        child: Container(
          padding: EdgeInsets.only(left: 50, right: 50, top: 300),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 80,
                width: size.width * 0.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FlatButton(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return SellerLogin();
                            }));
                      },
                      child:
                      const Text("Login as a Seller",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 80,
                width: size.width * 0.5,
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
                      const Text("Login as a Buyer",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
