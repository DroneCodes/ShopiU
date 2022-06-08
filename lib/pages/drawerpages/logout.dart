import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/auth.dart';
import 'package:moni_test/pages/authentication/widgets/login.dart';
import 'package:moni_test/pages/home_page.dart';
import 'package:provider/provider.dart';

class LogOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.only(top: 250, bottom: 100, left: 50, right: 50),
        child: Center(
          child: Column(
            children: [
              Text(
                "Do you wish to         Logout",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 60,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FlatButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: Colors.black,
                          onPressed: () async{
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return LoginPage();
                                }));
                            await authService.signOut();
                          },
                          child:
                          const Text("Yes",
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 60,
                    width: 120,
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
                          const Text("No",
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
