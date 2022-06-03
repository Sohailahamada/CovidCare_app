import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class start extends StatefulWidget {

  @override
  State<start> createState() => _StartState();
}

class _StartState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/logo2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            // margin: EdgeInsets.fromLTRB(-898.0, -128.0, -667.0, -68.0),
          ),
          Pinned.fromPins(
            Pin(start: -125.0, end: -125.0),
            Pin(size: 678.0, end: 63.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo_login.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(95.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.013, 0.244),
            child: SizedBox(
              width: 203.0,
              height: 27.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: '28 Days Later',
                    fontSize: 17,
                    color: const Color(0xff63b23b),
                    letterSpacing: 1,
                  ),
                  children: [
                    TextSpan(
                      text: 'Take care of your ',
                    ),
                    TextSpan(
                      text: 'life',
                      style: TextStyle(
                        color: const Color(0xff3b74b9),
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
