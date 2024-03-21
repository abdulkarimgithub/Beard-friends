import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {

  String title;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;

  CustomText({Key? key,   required this.title, this.color, this.fontSize, this.fontWeight}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Text(title,style: TextStyle(fontWeight:fontWeight,fontSize: fontSize, color:  color,),);
  }
}
