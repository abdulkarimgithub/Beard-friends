import 'package:flutter/material.dart';

class DatetimePickerScreen extends StatefulWidget {
  const DatetimePickerScreen({Key? key}) : super(key: key);

  @override
  State<DatetimePickerScreen> createState() => _DatetimePickerScreenState();
}

class _DatetimePickerScreenState extends State<DatetimePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: () async {
              TimeOfDay? PickedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial,
              );
              if(PickedTime!=null){
                print('Time Selected: ${PickedTime.hour}:${PickedTime.minute}');
              }

            }, child: Text("Show time")),
          ),
          ElevatedButton(onPressed: ()async {
            DateTime? datePicker= await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2029));
            if(datePicker!=null)
            {
              print('Date selected: ${datePicker.day}-${datePicker.month}-${datePicker.year}');
            }
          }, child: Text("Show date"))
        ],
      ),
    );
  }
}
