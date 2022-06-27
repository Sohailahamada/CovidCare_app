import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/form.dart';
class signup11 extends StatefulWidget {
  @override
  State<signup11> createState() => _signup11State();}
class _signup11State extends State<signup11> {
  final isSelected = <bool>[true, false];
  final emailController =TextEditingController();
  final passwordController =TextEditingController();
  final nameController =TextEditingController();
  final ageController =TextEditingController();
  final phoneController =TextEditingController();
  final nationalIDController =TextEditingController();
  final genderController =TextEditingController();
  final Stream<QuerySnapshot> users = FirebaseFirestore.instance.collection('users').snapshots();
  @override
  Widget build(BuildContext context) {
   CollectionReference users =FirebaseFirestore.instance.collection('users');
    return Scaffold( body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
              children: [
                SizedBox(height: 30,),
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
                Expanded(
                  child :
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                      print(value);},
                    onChanged: (value){
                      print(value);},
                    validator: (val){
                      if (val!.length >100){
                        return " Email Can't to be longer than 100 letter  ";
                      }
                      if (val.length < 100){
                        return " Email Can't to be less than 100 letter  ";
                      }
                      return null;},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' Email',
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),),
                Divider(height: 1,),
                Expanded(
                  child: TextFormField(
                    controller: nameController,
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
                    controller: ageController,
                    keyboardType: TextInputType.datetime,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){

                      print(value);

                    },

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Age',
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
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){

                      print(value);

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
                    controller: nationalIDController,
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
                    controller: genderController,
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
                      onPressed: () async {
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
                        users.add({'name':nameController}).then((value) => print('User Added')).catchError((error) => print('Faild to add user:$error'));

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