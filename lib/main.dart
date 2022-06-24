import 'package:flutter/material.dart';
import 'package:flutter_app1/StartScreen.dart';
import 'package:flutter_app1/about.dart';
import 'package:flutter_app1/chatbot.dart';
import 'package:flutter_app1/chatbot1.dart';
import 'package:flutter_app1/chatbot2.dart';
import 'package:flutter_app1/dchat.dart';
import 'package:flutter_app1/form.dart';
import 'package:flutter_app1/homep.dart';
import 'package:flutter_app1/homepage.dart';
import 'package:flutter_app1/pre1.dart';
import 'package:flutter_app1/pre22.dart';
import 'package:flutter_app1/profile.dart';
import 'package:flutter_app1/signup11.dart';
import 'package:flutter_app1/signup22.dart';
import 'package:flutter_app1/test3.dart';
import 'package:flutter_app1/test2.dart';
import 'package:flutter_app1/waiting.dart';
import 'package:flutter_app1/welcome.dart';
import 'package:flutter_app1/xray.dart';
import 'package:flutter_app1/xray2.dart';

import 'Start.dart';
import 'chat.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: XrayPage( ),
    );
  }
}


