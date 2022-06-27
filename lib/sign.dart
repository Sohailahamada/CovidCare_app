import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/homepage.dart';
import 'package:flutter_app1/signup11.dart';
import 'package:flutter_app1/signup22.dart';

class sign extends StatelessWidget {
  const sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Column(
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
          SizedBox(height: 100,),
          Container(
              width: 200.0,
              height: 55.0,
              child: MaterialButton(
              shape: const StadiumBorder(),
                minWidth: 230,
                color: const Color(0xff3b74b9),
                height: 45.0,
                onPressed:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signup11(),
                  ),
                  );
                },
                child: Text(
                  ' User sign up ',
                  style: TextStyle(
                    fontFamily: 'Comic Sans MS',
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),),
              )
          ),
          SizedBox(height: 30,),
          Container(
              width: 200.0,
              height: 55.0,
              child: MaterialButton(
                shape: const StadiumBorder(),
                minWidth: 230,
                color: const Color(0xff3b74b9),
                height: 45.0,
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup22(),
                    ),
                  );
                },
                child: Text(
                  ' Doctor sign up ',
                  style: TextStyle(
                    fontFamily: 'Comic Sans MS',
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),),
              )
          ),
        ],
      ),










    );











  }
}