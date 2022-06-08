import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/widgets/textfield.dart';

 class Passwordfield extends StatefulWidget {

   final TextEditingController controller;

   const Passwordfield({
     required this.controller
   });

   @override
   _PasswordfieldState createState() => _PasswordfieldState();
 }

 class _PasswordfieldState extends State<Passwordfield> {
   ValueChanged<String> onChanged = (value) {};
   String hintText = "Password";
   bool hidepassword = true;
   late TextEditingController controller;

   @override
  void initState() {
     controller = widget.controller;
     super.initState();
  }

  @override
   Widget build(BuildContext context) {
     return TextfieldContainer(
       child: TextField(
         controller: controller,
         obscureText: hidepassword,
         onChanged: onChanged,
         decoration: InputDecoration(
             hintText: hintText,
             icon: Icon(
               Icons.lock,
               color: Colors.black,
             ),
             suffixIcon: IconButton(
               icon: hidepassword == false
                   ? Icon(
                 Icons.visibility_rounded,
                 color: Colors.black,
               )
                   : Icon(
                 Icons.visibility_off_rounded,
                 color: Colors.grey,
               ),
               onPressed: () {
                 setState(() {
                   hidepassword = !hidepassword;
                 });
               },
             ),
             border: InputBorder.none
         ),
       ),
     );
   }
 }

