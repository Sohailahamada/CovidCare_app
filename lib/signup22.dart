import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/form.dart';
import 'package:flutter_app1/signup22.dart';
import 'package:flutter_app1/welcome.dart';

class signup22 extends StatefulWidget {

  @override
  State<signup22> createState() => _signup22State();
}

class _signup22State extends State<signup22> {
  final isSelected = <bool>[true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar (
        backgroundColor: Colors.white,
      ),*/
      body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                  children: [
                    SizedBox(height: 20,),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ToggleButtons(
                  color: Colors.black.withOpacity(0.60),
                  selectedColor: Colors.white,
                  selectedBorderColor: Color(0xFF6200EE),
                  fillColor: const Color(0xff3b74b9),
                  splashColor: Color(0xFF6200EE).withOpacity(0.12),
                  hoverColor: Color(0xFF6200EE).withOpacity(0.04),
                  borderRadius: BorderRadius.circular(20.0),
                  constraints: BoxConstraints(minHeight: 45.0, minWidth: 120.0),
                  isSelected: isSelected,
                  onPressed: (index) {
                    // Respond to button selection
                    setState(() {
                      //isSelected[index] = !isSelected[index];
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }

                    });
                  },
                  children: [
                       Text('User Sign Up',
                       style: TextStyle(
                           fontFamily: 'Comic Sans MS',
                           fontWeight: FontWeight.w700,

                       ),
                       ),
                       Text('Dr Sign Up',
                         style: TextStyle(
                           fontFamily: 'Comic Sans MS',
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                  ],
                ),

              ],
        ),
                    Expanded(
                      child :
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter user name or Email',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your name',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                    Divider(height: 1,),
                    Expanded(
                      child
                          : TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your birthday',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          suffixIcon: Icon(
                            Icons.calendar_view_month_rounded
                          ) ,
                        ),
                      ),
                    ),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Phone number',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Nattional ID ',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Gender ',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Upload Doctor's ID Card  ",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          suffixIcon: Icon(
                              Icons.file_upload_rounded
                          ) ,
                        ),
                      ),
                    ),
                    Divider(height: 1,),
                    Expanded(
                      flex: 2,
                      child:
                      Container(
                        alignment: Alignment(0.504, -0.6) ,
                        width: 150.0,
                        height: 35.0,
                        child: MaterialButton(
                          shape: const StadiumBorder(),
                          minWidth: 230,
                          color: const Color(0xff3b74b9),
                          height: 45.0,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => signup22(),
                              ),
                            );
                          } ,
                          child: Text(
                            ' Sign up ',
                            style: TextStyle(
                              fontFamily: 'Comic Sans MS',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),),
                        ),
                      ),
                    ),

        ]
    ),
            ),
          ),


    );
  }
}