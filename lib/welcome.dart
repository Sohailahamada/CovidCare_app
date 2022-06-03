import 'package:flutter/material.dart';
import 'package:flutter_app1/login.dart';
import 'package:flutter_app1/signup22.dart';

class  welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/logo_login.png'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(95.0),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/welcome.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            height: 100,
            child: Text(
              'Welcome !',
              style: TextStyle(
                fontFamily: '28 Days Later',
                fontSize: 45,
                color: const Color(0xff63b23b),
              ),),
          ),
          SizedBox(height: 15,),
          Container(
            child: MaterialButton(
              minWidth: 120,
              color: const Color(0xff3b74b9),
              height: 50.0,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login(),
                  ),
                );
              } ,
              child: Text(
                ' Login ',
                style: TextStyle(
                  fontFamily: 'Comic Sans MS',
                  fontSize: 21,
                  color: const Color(0xfffcfcfc),
                  fontWeight: FontWeight.w700,
                ),),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: MaterialButton(
              minWidth: 120,
              color: const Color(0xff3b74b9),
              height: 50.0,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signup22(),
                  ),
                );
              } ,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Comic Sans MS',
                  fontSize: 21,
                  color: const Color(0xfffcfcfc),
                  fontWeight: FontWeight.w700,
                ),),
            ),
          ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}