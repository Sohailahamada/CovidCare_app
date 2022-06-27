import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/form.dart';
import 'package:flutter_app1/homepage.dart';
import 'package:flutter_app1/signup22.dart';
import 'package:flutter_app1/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signup22 extends StatefulWidget {

  @override
  State<signup22> createState() => _signup22State();
}

class _signup22State extends State<signup22> {
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
    return Scaffold(
      body: Padding(
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
                      child : TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none, hintText: ' Email', contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),),),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your name',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),),),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),),),
                    Divider(height: 1,),
                    Expanded(child: TextField(
                        controller: ageController,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Age',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          suffixIcon: Icon(
                            Icons.calendar_view_month_rounded
                          ) ,),),),
                    Divider(height: 1,),
                    Expanded(
                      child: TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Phone number',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),),),
                    Divider(height: 1,),
                    Expanded(child: TextField(
                        controller: nationalIDController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Nattional ID ',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),),),
                    Divider(height: 1,),
                    Expanded(child: TextField(
                        controller: genderController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Gender ',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),),),
                    Divider(height: 1,),
                    Divider(height: 1,),
                    Expanded(flex: 2,
                      child: Container(
                        alignment: Alignment(0.504, -0.6) ,
                        width: 150.0,
                        height: 35.0,
                        child: MaterialButton(
                          shape: const StadiumBorder(),
                          minWidth: 230,
                          color: const Color(0xff3b74b9),
                          height: 45.0,
                          onPressed: ()async{
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
                              MaterialPageRoute(builder: (context) => homepage(),
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