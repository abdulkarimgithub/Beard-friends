import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {

  String title;
  IconData? icon;

   CustomContainer({Key? key,required this.title,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      Container(
        height: 104,
        width: 113,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),color: Color(0xff2C2C2E),

        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15,right: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon,color: Colors.white,),
              SizedBox(height: 29.h,),
              Text(title,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),)
            ],
          ),
        ),

      );
  }
}
