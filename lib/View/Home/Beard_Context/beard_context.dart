import 'package:beards_friends/View/Home/DateTimePicker/datetimepicker.dart';

import 'package:beards_friends/utils/colors/colors.dart';
import 'package:beards_friends/widgets/Button.dart';
import 'package:beards_friends/widgets/custom_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BeardContext extends StatefulWidget {
  const BeardContext({Key? key}) : super(key: key);

  @override
  State<BeardContext> createState() => _BeardContextState();
}

class _BeardContextState extends State<BeardContext> {
  List GridList = [
    [

      'assets/images/bart 1.png',
      Colors.purple,
      "1",
      Colors.white,
      "1455 Votes",
    ],
    [
      "assets/images/bart 2.png",
      Colors.white,
      "2",
      Colors.black,
      "1255 Votes",
    ],
    [
      "assets/images/bart 3.png",
      Colors.white,
      "3",
      Colors.black,
      "1155 Votes",
    ],
    [
      "assets/images/bart 4.png",
      Colors.white,
      "4",
      Colors.black,
      "1004 Votes",
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Bg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Beard Contest",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Participate in the Contest",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColors.FieldText),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                  height: 162,
                  width: 378,
                  decoration: BoxDecoration(
                      color: Color(0xff2C2C2E),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(
                          "Contest Ends in",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, left: 55, right: 55),
                          child: Row(
                            children: [
                              CircularPercentIndicator(
                                backgroundColor:
                                    Color.fromRGBO(255, 255, 255, 0.38),
                                backgroundWidth: 2,
                                radius: 25.0,
                                lineWidth: 4.0,
                                percent: 0.60,
                                center: Text(
                                  "2d",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                progressColor: Color(0xffBA5EEF),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              CircularPercentIndicator(
                                backgroundColor:
                                    Color.fromRGBO(255, 255, 255, 0.38),
                                backgroundWidth: 2,
                                radius: 25.0,
                                lineWidth: 4.0,
                                percent: 0.40,
                                center: Text(
                                  "18h",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                progressColor: Color(0xffBA5EEF),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              CircularPercentIndicator(
                                backgroundColor:
                                    Color.fromRGBO(255, 255, 255, 0.38),
                                backgroundWidth: 2,
                                radius: 25.0,
                                lineWidth: 4.0,
                                percent: 0.25,
                                center: Text(
                                  "45m",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                progressColor: Color(0xffBA5EEF),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                  onTap: (){Get.to(DatetimePickerScreen());},
                  child: CustomButton(name: "Participate in the Contest")),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Leader Board",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: Color.fromRGBO(255, 255, 255, 0.60)),
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  Container(
                    height: 33,
                    width: 83,
                    decoration: BoxDecoration(
                      color: MyColors.Button,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "View All",
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 500.h,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: GridList.length,
                  itemBuilder: (context, index) {
                    return CustomGrid(
                      assetName: GridList[index][0],
                      color1: GridList[index][1],
                      text1: GridList[index][2],
                      color2: GridList[index][3],
                      text2: GridList[index][4],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
