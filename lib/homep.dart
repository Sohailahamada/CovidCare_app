
import 'package:flutter/material.dart';
class homep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          /*Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo_login.png',
                width: 100,
                height: 150,
              ),
            ],
          ),*/
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right:30.0 ),
            child: Material(
              elevation: 3.0,
              shadowColor: Colors.grey,
              borderRadius:BorderRadius.circular(25.0) ,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: ' Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/images/search.png',
                      width: 10,
                      height: 10,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                  Container(
                    //height: 180,
                    decoration: BoxDecoration(
                      color:const Color(0xffeff6fa),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(6, 6),
                          //blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 15,
                    right: 10,
                    child: Text(
                      'WHO lists 9th COVID-19 vaccine for emergency use\n with aim to increase access to vaccination\n in lower-income countries\n17 December 2021 News release Geneva ',
                      style: TextStyle(
                        fontFamily: 'Comic Sans MS',
                        fontSize: 14,
                        color: const Color(0xff3b74b9),
                      ),
                      softWrap: false,
                    ),
                  ),
                  Positioned(
                    top: 108,
                    left: 220,
                    right: 10,
                    child: Text(
                      'Show More',
                      style: TextStyle(
                        fontFamily: 'Comic Sans MS',
                        fontSize: 14,
                        color: Colors.red,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Positioned(
                    top:130 ,
                    left:20,
                    right: 60,
                    child:Container(
                      width: 140,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),),
                      child: Image.asset(
                          'assets/images/homepage2.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                  Container(
                    //height: 180,
                    decoration: BoxDecoration(
                      color:const Color(0xffeff6fa),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(6, 6),
                          //blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 22,
                    left: 15,
                    right: 10,
                    child: Text(
                      'Covid symptoms: \n' ,
                      style: TextStyle(
                          fontFamily: 'Comic Sans MS',
                          fontSize: 16,
                          color: const Color(0xff3b74b9),
                          fontWeight: FontWeight.bold
                      ),
                      softWrap: false,
                    ),



                  ),
                  Positioned(
                    top: 50,
                    left: 15,
                    right: 10,
                    child: Text(
                      'What are they and how do\n I protect myself?' ,
                      style: TextStyle(
                        fontFamily: 'Comic Sans MS',
                        fontSize: 14,
                        color: const Color(0xff3b74b9),

                      ),
                      softWrap: false,
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 180,
                    right: 10,
                    child: Text(
                      'Show More',
                      style: TextStyle(
                        fontFamily: 'Comic Sans MS',
                        fontSize: 14,
                        color: Colors.red,
                      ),
                      softWrap: false,
                    ),


                  ),
                  Positioned(
                    top:110 ,
                    left:30,
                    right: 50,
                    child:Container(
                      width: 170,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),),
                      child: Image.asset(
                        'assets/images/homepage1.png',

                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}