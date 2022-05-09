import 'package:flutter/material.dart';
import 'package:moni_test/constants/controllers.dart';
import 'package:moni_test/pages/authentication/widgets/textfield.dart';

class RoundedInputField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  RoundedInputField({Key? key, required this.hintText, required this.icon, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
        //controller: userController.username,
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
