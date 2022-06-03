import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/chatbot.dart';
import 'package:flutter_app1/homep.dart';
import 'package:flutter_app1/pre1.dart';
import 'package:flutter_app1/profile.dart';
import 'package:flutter_app1/test3.dart';
import 'package:flutter_app1/xray.dart';


class homepage extends StatefulWidget {
  const homepage ({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _HomeState();
}

class _HomeState extends State<homepage> {
  List <Widget> screens =
  [
    homep(),
    test3(),
    pre1(),
    chatboot(),
    profile(),
  ];
  int currentIndex =0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, selectedItemColor: Colors.green,
        currentIndex: currentIndex,
        onTap: (index)
        {
          setState(()
          {
            currentIndex  = index ;
          });
        },
        items:
        [
          BottomNavigationBarItem(
            icon: new Image.asset('assets/images/home.png',height:40),
            label:"home",
          ),
          BottomNavigationBarItem(
            icon: new Image.asset('assets/images/lab.png',height:40),
            label: 'test',
          ),
          BottomNavigationBarItem(
            icon: new Image.asset('assets/images/xray.png',height: 40),
            label: 'XRay',
          ),
          BottomNavigationBarItem(
            icon: new Image.asset('assets/images/chatboot.png',height: 40),
            label: 'chatboot',
          ),
          BottomNavigationBarItem(
            icon: new Image.asset('assets/images/personal.png',height: 40),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
