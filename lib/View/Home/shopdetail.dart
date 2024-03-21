import 'package:beards_friends/View/Home/barberprofile.dart';
import 'package:beards_friends/View/Home/opening_time.dart';
import 'package:beards_friends/utils/colors/colors.dart';
import 'package:beards_friends/widgets/Button.dart';
import 'package:beards_friends/widgets/Text.dart';
import 'package:beards_friends/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShopDetail extends StatefulWidget {
  const ShopDetail({Key? key}) : super(key: key);

  @override
  State<ShopDetail> createState() => _ShopDetailState();
}

class _ShopDetailState extends State<ShopDetail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading: GestureDetector(
          onTap: (){
            Get.to(BarberProfile());
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.white54,)),backgroundColor: MyColors.Bg),
      backgroundColor: MyColors.Bg,
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 25,
            right: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomText(
                title: "Setup Shop Details",
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                title: "Complete Your Profile to Continue",
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
                  CustomText(title: "Shop Info",color: MyColors.Text,fontWeight: FontWeight.w600,fontSize: 18.sp,),
                ],
              ),
              SizedBox(height: 20.h,),
              CustomtextField(icon: Icon(Icons.shopping_bag_outlined), hintText: "Shop Name"),
              SizedBox(
                height: 15.h,
              ),
              CustomtextField(
                  icon: Icon(Icons.email_outlined), hintText: "Email Address"),
              SizedBox(
                height: 15.h,
              ),
              CustomtextField(
                icon: Icon(Icons.phone),
                hintText: "Helpline",

              ),
              SizedBox(
                height: 15.h,
              ),
              CustomtextField(
                icon: Icon(Icons.location_on),
                hintText: "Addressr",
                suffixIcon: Icon(Icons.my_location),

              ),

              SizedBox(
                height: 15.h,
              ),
              CustomtextField(
                icon: Icon(Icons.chair_outlined),
                hintText: "Sits",
                suffixIcon: Icon(Icons.arrow_drop_down),

              ),
              SizedBox(
                height: 15.h,
              ),
              CustomtextField(
                icon: Icon(Icons.person),
                hintText: "Staff Members",

              ),
              SizedBox(height: 15,),
              Container(
                height: 150,
                width:370 ,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: MyColors.Textfield),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text("About",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: MyColors.Text),),
                    )
                  ],
                )
              ),

              SizedBox(height: 30,),
              GestureDetector(
                  onTap: (){
                    Get.to(OpeningTime());
                  },

                  child: CustomButton(name: "Next")),

            ],
          ),
        ),
      ),
    );
  }
}
