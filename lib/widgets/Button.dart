import 'package:beards_friends/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {

  String name;
   CustomButton({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 378.w,
      decoration: BoxDecoration(color: MyColors.Button,borderRadius: BorderRadius.circular(20),),
child: Center(child: Text(name,style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500,),)),
    );
  }
}
