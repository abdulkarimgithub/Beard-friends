import 'package:beards_friends/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGrid extends StatelessWidget {
  String assetName;
  Color color1;
  String text1;
  String text2;
  Color color2;
   CustomGrid({Key? key,required this.assetName, required this.color1, required this.text1,required this.text2,required this.color2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      Column(
      children: [

        Container(

          // height: 130,
          width: 177,
          child: Image(image: AssetImage(assetName),fit: BoxFit.fill,),
      ),

          Center(
            child: Container(
              padding: EdgeInsets.only(top: 9),
              // height: 44,

              width: 177,
              decoration: BoxDecoration(color: Color(0xff2C2C2E),borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    // height: 26,
                    width: 49,
                    decoration: BoxDecoration(color: color1,borderRadius: BorderRadius.circular(10) )
                    ,
                    child: Row(
                      children: [
                        Icon(Icons.wine_bar_outlined,color: Colors.black26,),
                        Text(
                          text1,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: color2),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),

      ],
    );
  }
}
