import 'package:beards_friends/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomtextField extends StatelessWidget {
  String? hintText;
  Widget? icon;
  Widget? suffixIcon;


  CustomtextField({Key? key,  required this.icon, required this.hintText,  this.suffixIcon,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white10,


        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),

        prefixIcon: icon,

        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white24),

        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24),
            borderRadius: BorderRadius.circular(20)),

      ),
    );
  }
}
