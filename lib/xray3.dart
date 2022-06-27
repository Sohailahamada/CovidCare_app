import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class xray3 extends StatelessWidget {
  const xray3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo_login.png'),
                  fit: BoxFit.cover,

                ),
                borderRadius: BorderRadius.circular(95.0),
              ),
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
                  'your result is : Normal ',
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
      ),





    );
  }
}
