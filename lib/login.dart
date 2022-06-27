import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/signup22.dart';
import 'homepage.dart';
class login extends StatelessWidget {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {return Scaffold(
      body: Center(child: SingleChildScrollView(
          child: Form(key: formKey ,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children : [
                  Container(height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/logo_login.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(95.0),
                    ),),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){print(value);},
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon:Icon(Icons.email,),),
                    validator: (value) {
                      if ( value!.isEmpty)
                      {
                        return 'email address must not be empty';
                      }
                      return null ;
                    },
                  ),
                  SizedBox(height:15.0),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'password',
                      border: OutlineInputBorder(),
                      suffixIcon:Icon(Icons.remove_red_eye ,),),
                    validator: (value){
                      if ( value!.isEmpty)
                      {
                        return 'password address must not be empty';
                      }
                      return null ;
                    },
                  ),
                  SizedBox(height:30.0),
                  Center(
                    child: Container(
                      alignment: Alignment(0.504, -0.6) ,
                      width: 150.0,
                      height: 50.0,
                      child: MaterialButton(
                        shape: const StadiumBorder(),
                        minWidth: 230,
                        color: const Color(0xff3b74b9),
                        height: 45.0,
                        onPressed: () async {
                          try {
                            final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                            );
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                            }
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homepage(),),
                          );
                        } ,
                        child:Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Comic Sans MS',
                            fontSize: 24,
                            color: const Color(0xffffffff),
                            letterSpacing: 0.9,
                          ),
                          softWrap: false,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height:10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text ('Don\'t have an account?'),
                      TextButton(onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup22(),
                          ),
                        );
                      }, child: Text('Register Now'),)

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );

  }
}