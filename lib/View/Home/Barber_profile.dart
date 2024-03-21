import 'package:beards_friends/utils/colors/colors.dart';
import 'package:beards_friends/widgets/customContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Reservation/reservation.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  List MyList = [
    [Icons.adf_scanner_rounded, "Scan ID"],
    [Icons.calendar_month_sharp, "Reservation"],
    [Icons.person, "My Staff"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(color: Colors.black26),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black26,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.access_time_filled_outlined,
                color: Colors.black26,
              ),
              label: 'Campaign',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance,
                color: Colors.black26,
              ),
              label: 'Contest',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black26,
              ),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black26,
              ),
              label: 'Profile',
            ),
          ],
        ),
        backgroundColor: const Color(0xff1C1C1E),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 388,
                width: 428,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                        height: 388,
                        width: 428,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/haarig-baerte.png"),
                                fit: BoxFit.fill))),
                    Container(
                        height: 388,
                        width: 428,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 651.png"),
                                fit: BoxFit.fill))),
                    Padding(
                      padding: const EdgeInsets.all(10.2),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyColors.Button),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 325,
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Creative Cuts",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 100.w,
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MyColors.Button),
                            child: Center(
                                child: Text(
                              "Share Profile",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 363, right: 260),
                      child: Text(
                        "Koln - Germany",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: MyColors.Text),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 250,
                ),
                child: GestureDetector(
                  onTap: (){
                    Get.to(ReservationScreen());
                  },
                  child: Text(
                    "Manage Shop",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: Colors.white54),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: MyList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return CustomContainer(
                          title: MyList[index][1], icon: MyList[index][0]);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 15,
                      );
                    },
                  )),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 260,
                ),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.white54),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Koln - Germany",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Web",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "www.creativecut-cologne.de",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Tel",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "+49 221 934590",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Mail",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "contact@creativecut.cologne.de",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 260,
                ),
                child: Text(
                  "About",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.white54),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "vLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  Aenean commodo ligula eg  Aenean comm ligula eg.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  Aenean commodo ligula eg  Aenean comm ligula eg.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Colors.white24),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Shop Details",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 220.w,
                  ),
                  Container(
                    height: 33,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.Button),
                    child: Center(
                        child: Text(
                      "Edit",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.white),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sits",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Text(
                    "12",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Languages",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Text(
                    "English, Austrian & Egyption",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Staff",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Text(
                    "6 Members",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Price List",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 250.w,
                  ),
                  Container(
                    height: 33,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.Button),
                    child: Center(
                        child: Text(
                      "Edit",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.white),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hair Cut",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 140.w,
                  ),
                  Text(
                    "14\$",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hair Cut & Style ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Text(
                    "14\$",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hair Cut & Beard ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Text(
                    "14\$",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Beard Only ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 130.w,
                  ),
                  Text(
                    "14\$",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Opening Timing",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 200.w,
                  ),
                  Container(
                    height: 33,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.Button),
                    child: Center(
                        child: Text(
                      "Edit",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.white),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Monday ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    "9:00 to 17:00",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Tuesday ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    "9:00 to 17:00",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Wednesday ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    "9:00 to 17:00",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Thursday ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    "9:00 to 17:00",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Friday ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    "9:00 to 16:00",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Saturday ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    "9:00 to 17:00",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sunday ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    "Colse",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 260,
                ),
                child: Text(
                  "Portfolio",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.white54),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 320,
                  width: 378,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff2C2C2E)),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: Container(
                          width: 196,
                          height: 172,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/unsplash_uuCjYxJVf4o.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 226, top: 20, right: 20),
                        child: Container(
                          height: 81,
                          width: 132,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/unsplash_i9Q9bc-WgfE.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 111, left: 226, right: 20),
                        child: Container(
                          height: 81,
                          width: 132,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/unsplash_-4qhiC6RmQw.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 202, left: 20, right: 20),
                        child: Container(
                          height: 108,
                          width: 333,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/unsplash_-4qhiC6RmQw (1).png"),
                                  fit: BoxFit.fill)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
