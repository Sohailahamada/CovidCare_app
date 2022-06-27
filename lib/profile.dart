import 'package:flutter/material.dart';

import 'functions.dart';
import 'homepage.dart';
import 'login.dart';
import 'widgets/profile_image.dart';
import 'widgets/profile_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: defaultAppBar(
      //   leading: const Image(
      //     image: AssetImage('assets/images/test2_1.png'),
      //   ),
      //   title: const Image(
      //     height: 400,
      //     image: AssetImage('assets/images/logo_login.png'),
      //   ),
      //   action: const Image(
      //     image: AssetImage('assets/images/ProfileIcon.png'),
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const ProfileImage(),
              const ProfileInfo(
                title: 'name',
                data: 'Mahmoud Alaa',
              ),
              const ProfileInfo(
                title: 'age',
                data: '21',
              ),
              const ProfileInfo(
                title: 'phone',
                data: '01115159008',
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff3B74B9),
                ),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.7,
                child: defaultButton(
                  function: () {},
                  text: 'Edit',
                  textColor: Colors.white,
                  context: context,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff3B74B9),
                ),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.7,
                child: defaultButton(
                  function: () {},
                  text: 'Save',
                  textColor: Colors.white,
                  context: context,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff3B74B9),
                ),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.7,
                child: defaultButton(
                  function: () {
                    navigateAndFinish(context, login());
                  },
                  text: 'Log Out',
                  textColor: Colors.white,
                  context: context,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
