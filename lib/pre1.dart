import 'package:flutter/material.dart';
import 'package:flutter_app1/pre22.dart';
import 'package:flutter_app1/test3.dart';


class pre1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          SizedBox(
            height: 30,
          ),

          Row(
            children: [
              IconButton(
                icon: Image.asset('assets/images/pre.png'),
                iconSize: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => test3(),
                    ),
                  );
                },
              ),
              Container(
                height: 100,
                width: 150,
              ),

              Container(
                //alignment: Alignment(0.003, 0.501),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/premium.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/pre3.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  '  You can contact \n  a doctor to diagnose \n  the disease and\n  follow up with you.  ',
                  style: TextStyle(
                    fontFamily: 'Comic Sans MS',
                    fontSize: 16,
                    color: const Color(0xff3b74b9),
                    letterSpacing: 1,
                    fontStyle: FontStyle.italic,
                  ),
                  softWrap: false,
                ),
                Container(
                  width:95,
                  height: 95,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/pre1.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(19.0),
                    border: Border.all(width: 1.0, color: const Color(0xffafa9a9)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(2, 2),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/pre3.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  '  You can use X-rays \n  analysis feature and \n  get doctors\n  recommendations .  ',
                  style: TextStyle(
                    fontFamily: 'Comic Sans MS',
                    fontSize: 16,
                    color: const Color(0xff3b74b9),
                    letterSpacing: 1,
                    fontStyle: FontStyle.italic,
                  ),
                  softWrap: false,
                ),
                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/pre2.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(width: 1.0, color: const Color(0xffb0abab)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(2, 2),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment(0.003, 0.501),
                width: 201.0,
                height: 51.0,
                child: MaterialButton(
                  shape: const StadiumBorder(),
                  minWidth: 180,
                  color: const Color(0xffbe892b),
                  height: 45.0,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pre22(),
                      ),
                    );
                  } ,
                  child: Text(
                    'Try PREMIUM',
                    style: TextStyle(
                      fontFamily: 'Comic Sans MS',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}