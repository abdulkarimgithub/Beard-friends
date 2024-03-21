import 'package:beards_friends/View/Home/opening_time.dart';
import 'package:beards_friends/View/Home/pricelist.dart';
import 'package:beards_friends/View/Home/shopdetail.dart';
import 'package:beards_friends/model/my_model.dart';
import 'package:beards_friends/utils/colors/colors.dart';
import 'package:beards_friends/widgets/Button.dart';
import 'package:beards_friends/widgets/Text.dart';
import 'package:beards_friends/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WeekTime extends StatefulWidget {
  const WeekTime({Key? key}) : super(key: key);

  @override
  State<WeekTime> createState() => _WeekTimeState();
}

class _WeekTimeState extends State<WeekTime> {
  var values1 = '-1';
  var values2 = '-1';

  List<myText> myDataModel = [
    myText(title: "Opening Time"),
    myText(title: "Closing Time"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Get.to(OpeningTime());
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white54,
              )),
          backgroundColor: MyColors.Bg),
      backgroundColor: MyColors.Bg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 25,
            right: 25,
          ),
          child: Column(
            children: [
              CustomText(
                title: "Setup Opening Time",
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
                    title: "Timing",
                    color: MyColors.Text,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30.sp),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.access_time_filled_outlined),
                          focusedBorder: InputBorder.none),
                      value: values1,
                      items: [
                        DropdownMenuItem(
                          child: Text("Select Days"),
                          value: "-1",
                        ),
                        DropdownMenuItem(
                          child: Text("Monday to Friday"),
                          value: "1",
                        ),
                        DropdownMenuItem(
                          child: Text("Monday to Saturday"),
                          value: "2",
                        ),
                        DropdownMenuItem(
                          child: Text("Full Week"),
                          value: "3",
                        ),
                      ],
                      onChanged: (values1) {}),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30.sp),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.access_time_filled_outlined),
                        focusedBorder: InputBorder.none,
                      ),
                      value: values2,
                      items: [
                        DropdownMenuItem(
                          child: Text("Select Hours "),
                          value: "-1",
                        ),
                        DropdownMenuItem(
                          child: Text("Same for All Days"),
                          value: "1",
                        ),
                        DropdownMenuItem(
                          child: Text("Manually Set for Each Day"),
                          value: "2",
                        ),
                      ],
                      onChanged: (values1) {}),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Monday",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                      ))),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: myDataModel.length,
                  itemBuilder: (context, index) {
                    return ContainerBox(
                      title: myDataModel[index].title.toString(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20.w,
                    );
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Tuesday",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                      ))),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: myDataModel.length,
                  itemBuilder: (context, index) {
                    return ContainerBox(
                      title: myDataModel[index].title.toString(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20.w,
                    );
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Wednesday",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                      ))),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: myDataModel.length,
                  itemBuilder: (context, index) {
                    return ContainerBox(
                      title: myDataModel[index].title.toString(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20.w,
                    );
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Thursday",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                      ))),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: myDataModel.length,
                  itemBuilder: (context, index) {
                    return ContainerBox(
                      title: myDataModel[index].title.toString(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20.w,
                    );
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Friday",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                      ))),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: myDataModel.length,
                  itemBuilder: (context, index) {
                    return ContainerBox(
                      title: myDataModel[index].title.toString(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20.w,
                    );
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Saturday",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                      ))),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: myDataModel.length,
                  itemBuilder: (context, index) {
                    return ContainerBox(
                      title: myDataModel[index].title.toString(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20.w,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(PriceList());
                  },

                  child: CustomButton(name: "Next")),
            ],
          ),
        ),
      ),
    );
  }
}
