import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/widgets/textfield.dart';

class RoundedInputField extends StatelessWidget {

  final String hintText;
  TextEditingController emailcontroller;
  final IconData icon;
  final ValueChanged<String> onChanged;

  RoundedInputField({Key? key, required this.hintText, required this.icon, required this.onChanged, required this.emailcontroller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
        controller: emailcontroller,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon, color: Colors.black,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
