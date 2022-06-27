import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
        Image.asset(
          'assets/images/logo_login.png',
          height: 200,
          width: 150,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius:BorderRadius.circular(25)
          ),
          child: Image.asset(
            'assets/images/ProfileIcon.png',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
