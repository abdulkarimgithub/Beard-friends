import 'package:beards_friends/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ContainerBox extends StatefulWidget {
  String title;
   ContainerBox({Key? key,required this.title}) : super(key: key);

  @override
  State<ContainerBox> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
height: 40,
      width: 177.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff2C2C2E)),
      child: Center(child: Text(widget.title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp,color: MyColors.FieldText),)),
    );
  }
}
