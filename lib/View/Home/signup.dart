// import 'dart:ffi';

import 'package:beards_friends/View/Home/forgetpassword.dart';
import 'package:beards_friends/View/Home/login.dart';
import 'package:beards_friends/widgets/Button.dart';
import 'package:beards_friends/widgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/colors/colors.dart';
import '../../widgets/textformfield.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  ValueNotifier<bool> tx=ValueNotifier<bool>(false);
  ValueNotifier<bool> tx1=ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.Bg,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
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
              height: 22.h,
            ),
            CustomText(
              title: "Create Account",
              color: MyColors.Text,
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              title: "Please Signup  to your Account",
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: MyColors.FieldText,
            ),
            SizedBox(
              height: 60.h,
            ),
            CustomtextField(icon: Icon(Icons.person), hintText: "Username"),
            SizedBox(
              height: 20.h,
            ),
            CustomtextField(
                icon: Icon(Icons.email_outlined), hintText: "Email"),
            SizedBox(
              height: 20.h,
            ),
            CustomtextField(
              icon: Icon(Icons.lock),
              hintText: "Password",
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            SizedBox(
              height: 25.h,
            ),
            CustomtextField(
              icon: Icon(Icons.lock),
              hintText: "Confirm Password",
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            SizedBox(
              height: 75.h,
            ),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return
                          AlertDialog(
                            backgroundColor: Color(0xff2C2C2E),
                            title: Text(
                              "GDPR and General Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500,color: Colors.white54),

                            ),

                            content: Container(

                              height: 160,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Row(
                                children:[
                                  ValueListenableBuilder(valueListenable: tx, builder: (context, value, child) {
                                    return Checkbox(value: tx.value, onChanged: (value) {
                                      tx.value=value!;
                                    },);
                                  },),

                                  RichText(
                                  text: TextSpan(
                                    text: '  Agree & Accept',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.white54),

                                    children:  <TextSpan>[
                                      TextSpan(
                                          text: ' Privacy Policy', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,color: MyColors.Button)),
                                    ],

                                     )),]
                                  ),
                                  SizedBox(height: 10.h,),
                                  Row(
                                      children:[

                                        ValueListenableBuilder(valueListenable: tx1, builder: (context, value, child) {
                                          return Checkbox(value: tx1.value, onChanged: (value) {
                                            tx1.value=value!;
                                          });},),
                                        RichText(
                                            text: TextSpan(
                                              text: '  Agree & Accept',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.white54),

                                              children:  <TextSpan>[
                                                TextSpan(
                                                    text: '  General Terms & Conditions', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,color: MyColors.Button)),
                                              ],

                                            )),]
                                  ),
                                  SizedBox(height: 30.h,),
                                  RichText(
                                      text: TextSpan(
                                        text: ' Make Sure you have read our Terms & \n Condition before Continue to the app.',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500,color: Colors.white54),




                                      )
                                  ),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 60,

                                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,) ,
                                        child: Center(child: GestureDetector(
                                            onTap: (){
                                              Get.to(ForgetPassword());
                                            },
                                            child: Text("Continue",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp,color: MyColors.Text),))),
                                      )
                                    ],
                                  )

                                ],

                              ),
                            ));


                      });
                },
                child: CustomButton(name: "Create Account")),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  title: "Already have an Account?",
                  fontSize: 12.sp,
                  color: MyColors.Text,
                  fontWeight: FontWeight.w400,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(LogIn());
                    },
                    child: CustomText(
                      title: " Login",
                      fontSize: 14.sp,
                      color: MyColors.Text,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
