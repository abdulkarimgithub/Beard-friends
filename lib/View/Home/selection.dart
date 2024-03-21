import 'package:beards_friends/View/Home/login.dart';
import 'package:beards_friends/main.dart';
import 'package:beards_friends/utils/colors/colors.dart';
import 'package:beards_friends/widgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Bg,
      body: Padding(
        padding: const EdgeInsets.only(top: 115, left: 40, right: 40),
        child: Column(
          children: [
            CustomText(
              title: "Tell Us About Yourself",
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: MyColors.Text,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              title: "Choose to Continue",
              color: MyColors.FieldText,
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
            ),
            SizedBox(
              height: 131.h,
            ),
            Container(
              width: 348.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: MyColors.Textfield,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 38),
                    child: Icon(
                      Icons.person,
                      color: MyColors.FieldText,
                    ),
                  ),
                  SizedBox(
                    width: 29.9.w,
                  ),
                  CustomText(
                    title: "Beard Friend",
                    color: MyColors.FieldText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Container(
              width: 348.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: MyColors.Button,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 38),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    width: 29.9.w,
                  ),
                  CustomText(
                    title: "Barbarshop",
                    color: Colors.white70,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60.h,
                  width: 143.w,
                  decoration: BoxDecoration(
                      color: MyColors.Button,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: GestureDetector(
                    onTap: (){
                      Get.to(LogIn());
                    },
                    child: Container(
                        child: Row(
                      children: [
                        Text(
                          "    Next",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70),
                        ),
                        SizedBox(
                          width: 44.w,
                        ),
                        Icon(
                          Icons.navigate_next_outlined,
                          color: Colors.white,
                        )
                      ],
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
