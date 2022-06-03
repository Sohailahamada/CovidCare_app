import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/form.dart';
import 'package:flutter_app1/signup22.dart';
import 'package:flutter_app1/signup22.dart';
import 'package:flutter_app1/welcome.dart';

class signup11 extends StatefulWidget {

  @override
  State<signup11> createState() => _signup11State();
}

class _signup11State extends State<signup11> {
  final isSelected = <bool>[true, false];
  final emailController =TextEditingController();
  final passwordController =TextEditingController();


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
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                      print(value);
                      },
                    onChanged: (value){

                      print(value);

                    },
                    validator: (val){
                      if (val!.length >100){
                        return " Email Can't to be longer than 100 letter  ";
                      }
                      if (val.length < 100){
                        return " Email Can't to be less than 100 letter  ";
                      }
                      return null;
                    },


                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' Email',
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
                Divider(height: 1,),
                Expanded(
                  child: TextFormField(
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){

                      print(value);

                    },
                    validator: (val){
                      if (val!.length >100){
                        return " Username Can't to be longer than 100 letter  ";
                      }
                      if (val.length < 100){
                        return " Username Can't to be less than 100 letter  ";
                      }
                      return null;
                    },
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
                      : TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){

                      print(value);

                    },
                    validator: (val){
                      if (val!.length >100){
                        return " Password  Can't to be longer than 100 letter  ";
                      }
                      if (val.length < 100){
                        return " Password Can't to be less than 100 letter  ";
                      }
                      return null;
                    },


                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
                Divider(height: 1,),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){

                      print(value);

                    },

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
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (email){

                      print(email);

                    },
                    validator: (val){
                      if (val!.length >100){
                        return " Phone Number  Can't to be longer than 11 number  ";
                      }
                      if (val.length < 100){
                        return " Phone Number Can't to be less than 11 number  ";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' Phone number',
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
                Divider(height: 1,),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (val){
                      if (val!.length >100){
                        return " Nattional ID Can't to be longer than 14 number  ";
                      }
                      if (val.length < 100){
                        return " Nattional ID Can't to be less than 14 number   ";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Your Nattional ID ',
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
                Divider(height: 1,),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Gender ',
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
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
                      onPressed: () async{

                        try {
                          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text,

                          );
                          print(credential);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => form(),
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