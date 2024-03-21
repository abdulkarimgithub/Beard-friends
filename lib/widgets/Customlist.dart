import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomList extends StatelessWidget {

  String title1;
  String image;
   CustomList({Key? key,required this.title1,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      Container(
      height: 100,
      width: 378,
      decoration: BoxDecoration(
        color: Color(0xff2C2C2E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 70,
              width: 69,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image)),borderRadius: BorderRadius.zero),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title1,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                SizedBox(height: 5.h,),
                Text("4:00 PM on 04-03-2023",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.white),)
              ]
          ),



        ],
      ),
    );
  }
}
