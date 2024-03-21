import 'package:beards_friends/View/Home/Barber_profile.dart';

import 'package:beards_friends/View/Home/weektime.dart';
import 'package:beards_friends/model/my_model.dart';
import 'package:beards_friends/widgets/Button.dart';
import 'package:beards_friends/widgets/Text.dart';
import 'package:beards_friends/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors/colors.dart';

class PriceList extends StatefulWidget {
  const PriceList({Key? key}) : super(key: key);

  @override
  State<PriceList> createState() => _PriceListState();
}

class _PriceListState extends State<PriceList> {
  List<myText> myPriceModel = [
    myText(title: "Hairs Only"),
    myText(title: "14 pkr"),
  ];
  List<myText> myPriceModel1 = [
    myText(title: "Label"),
    myText(title: "Price"),
  ];
  List<myText> myPriceModel2 = [
    myText(title: "English"),
    myText(title: "Austrian"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.Bg,
        appBar: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Get.to(WeekTime());
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white54,
                )),
            backgroundColor: MyColors.Bg),
        body: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 60),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: "Price List & Languages",
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
                    CustomText(
                      title: "Price",
                      color: MyColors.Text,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                    SizedBox(
                      width: 200.w,
                    ),
                    Container(
                        height: 33,
                        width: 104,
                        decoration: BoxDecoration(
                          color: MyColors.Button,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                "Add Feild",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ContainerBox(
                          title: myPriceModel[index].title.toString());
                    },
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 30.w,
                      );
                    },
                    itemCount: myPriceModel.length,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ContainerBox(title: myPriceModel1[index].title);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 30,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: myPriceModel1.length),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      title: "Language",
                      color: MyColors.Text,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ContainerBox(title: myPriceModel2[index].title);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 30.w,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: myPriceModel2.length),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  children: [
                    ContainerBox(title: "Language Name"),
                    SizedBox(width: 20.w,),
                    FloatingActionButton(

                        backgroundColor: MyColors.Button,
                        child: Icon(Icons.add,color: Colors.white,),

                        onPressed: (){}

                    )
                  ],
                ),
                SizedBox(
                  height: 180.h,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(ProfilPage());
                    },

                    child: CustomButton(name: "Complete Profile"))
              ]),
        ));
  }
}
