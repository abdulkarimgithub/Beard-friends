import 'package:beards_friends/View/Home/Beard_Context/beard_context.dart';
import 'package:beards_friends/widgets/Customlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors/colors.dart';
import '../../widgets/Text.dart';
import '../Home/shopdetail.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  List MyList=[

    ["assets/images/Ellipse 53.png","Peg John"],
    ["assets/images/Ellipse 53 (1).png","Olive Jew"]

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Get.to(ShopDetail());
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white54,
                )),
            backgroundColor: MyColors.Bg),
        backgroundColor: MyColors.Bg,
        body: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                title: "Reservations",
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                title: "Manage Your Reservations",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: MyColors.Text,
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    title: "Pending Approval",
                    color: MyColors.Text,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
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
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Ellipse 53 2.png")),borderRadius: BorderRadius.zero),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("John Ipsum",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                        SizedBox(height: 5.h,),
                        Text("4:00 PM on 04-03-2023   ",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.white),)
                      ]
                    ),
                    SizedBox(width: 30.w,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/close_ring_duotone.png")),borderRadius: BorderRadius.zero),
                    ),
                    SizedBox(width: 15.w,),
                    GestureDetector(
                      onTap: (){
                        Get.to(BeardContext());
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Group 485.png")),borderRadius: BorderRadius.zero),
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    title: "Upcoming",
                    color: MyColors.Text,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 300.h,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                  return CustomList(title1: MyList[index][1], image: MyList[index][0]);
                }, separatorBuilder: (context, index) {
                  return SizedBox(height: 20.h,);
                }, itemCount: 2),
              )

            ],
          ),
        ));
  }
}
