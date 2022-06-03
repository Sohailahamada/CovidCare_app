import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'homepage.dart';
class  form extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/form.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Text(
              'Your Medical History',
              style: TextStyle(
                fontSize: 25,
                color: const Color(0xff0e81b9),
                letterSpacing: 1.75,
              ),
              softWrap: false,
            ),

            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0x29000000),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  //borderRadius: BorderRadius.circular(20.0),
                  child: Text(' Do you suffer from a high\n temperature?',),
                ),
                SizedBox(width: 11,),
                ToggleSwitch(
                  inactiveBgColor: const Color(0x29000000),
                  minHeight: 40,
                  minWidth: 60,
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: [
                    'Yes',
                    'No',
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),

              ],
            ),

            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0x29000000),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  //borderRadius: BorderRadius.circular(20.0),
                  child: Text(" Do you suffer from a \n chronic disease?",),
                ),
                SizedBox(width: 11,),
                ToggleSwitch(
                  inactiveBgColor: const Color(0x29000000),
                  minHeight: 40,
                  minWidth: 60,
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: [
                    'Yes',
                    'No',
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),

            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0x29000000),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  //borderRadius: BorderRadius.circular(20.0),
                  child: Text(" Do you have a cough?",),
                ),
                SizedBox(width: 11,),
                ToggleSwitch(
                  inactiveBgColor: const Color(0x29000000),
                  minHeight: 40,
                  minWidth: 60,
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: [
                    'Yes',
                    'No',
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),

            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0x29000000),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  //borderRadius: BorderRadius.circular(20.0),
                  child: Text(" Do you smoke?",),
                ),
                SizedBox(width: 11,),
                ToggleSwitch(
                  inactiveBgColor: const Color(0x29000000),
                  minHeight: 40,
                  minWidth: 60,
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: [
                    'Yes',
                    'No',
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),

            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color(0x29000000),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(" are you pregnant?(women) ",),
                ),
                SizedBox(width: 11,),
                ToggleSwitch(
                  inactiveBgColor: const Color(0x29000000),
                  minHeight: 40,
                  minWidth: 60,
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: [
                    'Yes',
                    'No',
                  ],
                  onToggle: (index) {
                    print('switched to: $index');

                  },
                ),
              ],
            ),

            SizedBox(height: 70,),
            Container(
              alignment:Alignment.center ,
              child: SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage(),
                      ),
                    );
                  },
                  child: Text('Confirm'),

                ),


              ),
            ),

          ],
        ),
      ),
    );
  }
}
