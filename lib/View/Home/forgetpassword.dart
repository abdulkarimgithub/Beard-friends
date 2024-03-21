import 'package:beards_friends/View/Home/login.dart';
import 'package:beards_friends/utils/colors/colors.dart';
import 'package:beards_friends/widgets/Button.dart';
import 'package:beards_friends/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/Text.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Bg,
      body: Padding(
        padding: const EdgeInsets.only(top: 90,left: 25,right: 25),
        child: Column(
          children: [


            CustomText(
              title: "Forgot Password?",
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              title: "Please Type in your Email Address",
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: MyColors.FieldText,
            ),
            SizedBox(
              height: 131.h,
            ),
            CustomtextField(icon: Icon(Icons.email_outlined), hintText: "Email"),
            SizedBox(
              height: 150.h,
            ),

            GestureDetector(
                onTap: (){
                  Get.to(LogIn());
                },
                child: CustomButton(name: "Reset Password")),



            SizedBox(height: 260.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(title: "Remember Password?",fontSize: 12.sp,color: MyColors.Text,fontWeight: FontWeight.w400,),
                GestureDetector(
                    onTap: (){
Get.to(LogIn());

                    },
                    child: CustomText(title: " Login",fontSize: 14.sp,color: MyColors.Text,fontWeight: FontWeight.w500,)),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
