import 'package:flutter/cupertino.dart';
import 'package:flutter_app1/Start.dart';
import 'package:flutter_app1/StartScreen.dart';

class waiting extends StatefulWidget {
  @override
  _WaitingState createState() => _WaitingState();
}

class _WaitingState extends State<waiting> {
  bool voxt = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (c, s) => s.connectionState != ConnectionState.done
            ? start()
            : startscreen()
    );
  }
}