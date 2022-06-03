import 'package:flutter/material.dart';
import 'about.dart';
import 'login.dart';

class startscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/logo_login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: MaterialButton(
              minWidth: 200,
              height: 50,
              color: const Color(0xffffffff),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => about(),
                  ),
                );
              },
              child: Text(
                'English',
                style: TextStyle(
                  fontFamily: 'Comic Sans MS',
                  fontSize: 25,
                  color: const Color(0xff736f6f),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: MaterialButton(
              minWidth: 200,
              height: 50,
              color: const Color(0xffffffff),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => about(),
                  ),
                );
              },
              child: Text(
                'عربى',
                style: TextStyle(
                  fontFamily: 'Comic Sans MS',
                  fontSize: 25,
                  color: const Color(0xff736f6f),
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
