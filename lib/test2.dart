
import 'package:flutter/material.dart';
import 'package:flutter_app1/homepage.dart';
class test2 extends StatelessWidget {
  final double value1;
  final double value2;
  final double value3;
  final double value4;
  final double value5;
  String res ='';
  test2({
    required this.value1,
    required this.value2,
    required this.value3,
    required this.value4,
    required this.value5,});
  result (value1,value2,value3,value4,value5){
    if (value1>3.92 && value1<5.13 && value2>11.6 && value2<15 && value3>35.5 && value3<44.9 && value4>3.4 && value4 <9.6&& value5>157 && value5<371){
      res='normal';
      return(res);}
    else {
      res="unnormal \nplease visit your doctor";
      return(res);}}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              IconButton(
                icon: Image.asset('assets/images/rowt2.png'),
                iconSize: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homepage(),
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'your medical tests',
              style: TextStyle(
                fontFamily: '28 Days Later',
                fontSize: 25,
                color: const Color(0xff0e81b9),
                letterSpacing: 1.75,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/test2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 290.0,
            height: 90.0,
            decoration: BoxDecoration(
              color:const Color(0xffeff6fa),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(6, 6),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'your result is ${result(value1,value2,value3,value4,value5)}',
                style: TextStyle(
                  fontFamily: 'Comic Sans MS',
                  fontSize: 20,
                  color: const Color(0xff3b74b9),
                  letterSpacing: 1.25,
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),

        ],
      ),




    );
  }
}

