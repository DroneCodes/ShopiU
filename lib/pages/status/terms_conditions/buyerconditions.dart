import 'package:flutter/material.dart';
import 'package:moni_test/pages/home_page.dart';
import 'package:moni_test/pages/product/productmenu.dart';

class BuyerConditions extends StatefulWidget {
  const BuyerConditions({Key? key}) : super(key: key);

  @override
  _BuyerConditionsState createState() => _BuyerConditionsState();
}

class _BuyerConditionsState extends State<BuyerConditions> {

  // check box is unchecked by default
  bool agree = false;

  void _doSomething() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return HomePage();
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conditions"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Text("Your privacy is important to us. It is ShopiU's policy to respect your privacy and comply with any applicable law and regulation regarding any personal information we may collect about you, including via our app, ShopiU, and its associated services."
                    "In the event our app contains links to third-party sites and services, please be aware that those sites and services have their own privacy policies. After following a link to any third-party content, you should read their posted privacy policy information about how they collect and use personal information. This Privacy Policy does not apply to any of your activities after you this app."),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Material(
                  child: Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                ),
                const Text(
                  "I have read and accept terms and conditions",
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            ElevatedButton(
                onPressed: agree ? _doSomething : null,
                child: Text("Continue")
            )
          ],
        ),
      ),
    );
  }
}
