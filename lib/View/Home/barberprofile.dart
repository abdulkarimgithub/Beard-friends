import 'package:beards_friends/View/Home/shopdetail.dart';
import 'package:beards_friends/utils/colors/colors.dart';
import 'package:beards_friends/widgets/Button.dart';
import 'package:beards_friends/widgets/Text.dart';
import 'package:beards_friends/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BarberProfile extends StatefulWidget {
  const BarberProfile({Key? key}) : super(key: key);

  @override
  State<BarberProfile> createState() => _BarberProfileState();
}

class _BarberProfileState extends State<BarberProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Bg,
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 25,
        right: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomText(
                title: "Setup Profile",
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
              Stack(
                children: [
                  Container(
                    height: 249,
                    width: 378,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff2C2C2E)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Profile Picture",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: MyColors.Text),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/images/haarig-baerte-sagen-viel-ueber-ihre-traeger-aus 1.png"),
                            maxRadius: 50,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Tap to Add your Profile\n        Picture.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: MyColors.Text),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 105,
                      left: 180,
                      child: CircleAvatar(child: Icon(Icons.camera_alt),maxRadius: 15,))
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(title: "Personal Info",color: MyColors.Text,fontWeight: FontWeight.w600,fontSize: 18.sp,),
                ],
              ),
              SizedBox(height: 20.h,),
              CustomtextField(icon: Icon(Icons.person), hintText: "Username"),
              SizedBox(
                height: 15.h,
              ),
              CustomtextField(
                  icon: Icon(Icons.email_outlined), hintText: "Email"),
              SizedBox(
                height: 15.h,
              ),
              CustomtextField(
                icon: Icon(Icons.phone),
                hintText: "Phone Number",

              ),
              SizedBox(height: 30,),
              GestureDetector(
                  onTap: (){
                    Get.to(ShopDetail());
                  },
                  child: CustomButton(name: "Next")),

            ],
          ),
        ),
      ),
    );
  }
}
