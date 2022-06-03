import 'package:flutter/material.dart';
import 'package:flutter_app1/pre1.dart';
import 'package:flutter_app1/test3.dart';


class pre22 extends StatelessWidget {

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
                MaterialPageRoute(builder: (context) => pre1(),
                ),
              );
            },
          ),
          ],
        ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0,right:26.0 ),
              child: Material(
                elevation: 8.0,
                shadowColor: Colors.grey,
                child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Card Number',
                        border: OutlineInputBorder(),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/visa.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                        ),




                      ),
                    ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0,right:26.0 ),
              child: Material(
                elevation: 8.0,
                shadowColor: Colors.grey,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Card Owner Name',
                    border: OutlineInputBorder(),


                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
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
                      ' Save ',
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