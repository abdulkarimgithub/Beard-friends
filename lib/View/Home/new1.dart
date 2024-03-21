import 'package:flutter/material.dart';

class img extends StatelessWidget {
  const img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height:180 ,
            width: 177,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/bart 1.png')),
            ),
            child:Row(
              children: [
                Text('sdfsd'),
                Text('sdee'),
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
