import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Start.dart';
import 'package:flutter_app1/welcome.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Column(
            children: [
              Stack(
                children:[
                  Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/about_us.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(6, 6),
                          blurRadius: 6,
                        ),
                      ],
                    ),

                  ),
                  Positioned(
                    bottom: 0,
                    right: 70,
                    child: Text(
                      'about us',
                      style: TextStyle(
                        fontFamily: 'Chicken Quiche',
                        fontSize: 50,
                        color: const Color(0xff3b74b9),
                      ),
                      softWrap: false,
                    ),
                  )
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                top: 33,
                left: 15,
                right: 10,
                child: Text(
                  'This application will help you to know more\nabout Covid-19 and all its symptoms, plus\nyou can check your medical condition\nUnder specialized medical care, also you\ncan upload your X-ray and you\'ll get the\nresult at the same moment.\nnot only that, you can follow up with the\nappropriate doctor or with our trained\nsystem to help you get better soon ❤',
                  style: TextStyle(
                    fontFamily: 'Comic Sans MS',
                    fontSize: 15,
                    color: const Color(0xff3b74b9),
                  ),
                  softWrap: false,
                ),
              )

            ],
          ),
          SizedBox(height: 40,),
          MaterialButton(
            height: 50,
            color:const Color(0xff3b74b9) ,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => welcome(),
                ),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Get Start Now',
                  style: TextStyle(
                    fontFamily: 'Comic Sans MS',
                    fontSize: 21,
                    color: const Color(0xfffcfcfc),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon( // <-- Icon
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 24.0,
                ),
              ],
            ),
          ),

        ],
      ),
    );

  }
}
