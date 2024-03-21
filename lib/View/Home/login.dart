import 'package:beards_friends/View/Home/barberprofile.dart';
import 'package:beards_friends/View/Home/forgetpassword.dart';
import 'package:beards_friends/View/Home/signup.dart';
import 'package:beards_friends/main.dart';
import 'package:beards_friends/utils/colors/colors.dart';
import 'package:beards_friends/widgets/Button.dart';
import 'package:beards_friends/widgets/Text.dart';
import 'package:beards_friends/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Bg,
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 25,right: 25),
        child: Column(
          children: [
            Container(
              height: 75.h,
              width: 86.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image 1.png"),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 25.h,
            ),
            CustomText(
              title: "Welcome Back!",
              color: MyColors.Text,
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              title: "Please Login to your Account",
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: MyColors.FieldText,
            ),
            SizedBox(
              height: 80.h,
            ),
            CustomtextField(icon: Icon(Icons.email_outlined), hintText: "Email"),
            SizedBox(
              height: 20.h,
            ),
            CustomtextField(
              icon: Icon(Icons.lock),
              hintText: "Password",
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [GestureDetector(
                  onTap: (){
                    Get.to(ForgetPassword());
                  },
                  child: CustomText(title: "Forgot Password?",color: Colors.white24,))],
            ),
            SizedBox(
              height: 65.h,
            ),
            GestureDetector(
              onTap: (){
                Get.to(BarberProfile());
              },

                child: CustomButton(name: "Login")),
            SizedBox(height: 35.h,),
            CustomText(title: "or Continue With",color: MyColors.Text,fontSize: 12.sp,fontWeight: FontWeight.w400,),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/image 19.png"))),
                  ),
                ),
                SizedBox(width: 30.w,),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/image 18.png"))),
                  ),
                ),




              ],
            ),
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(title: "Not have an Account?",fontSize: 12.sp,color: MyColors.Text,fontWeight: FontWeight.w400,),
                GestureDetector(
                    onTap: (){

                      Get.to(SignUp());
                    },
                    child: CustomText(title: "Create One?",fontSize: 14.sp,color: MyColors.Text,fontWeight: FontWeight.w500,)),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
