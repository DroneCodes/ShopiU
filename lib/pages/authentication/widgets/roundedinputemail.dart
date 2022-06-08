import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/widgets/textfield.dart';

class RoundedInput extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  RoundedInput({Key? key, required this.hintText, required this.icon, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
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
