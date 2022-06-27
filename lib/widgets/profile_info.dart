import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key, required this.title, required this.data}) : super(key: key);
final String title;
final String data;

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Text('${title.toUpperCase()}:',
              style: const TextStyle(
                color: Color(0xff3B74B9),
                fontSize: 20,
                fontWeight:FontWeight.w700
              ),),
            ),
            const SizedBox(width: 10,),
            Container(
              width: size.width*0.65,
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              decoration:   BoxDecoration(
                color: const Color(0xffEFF6FA),
                borderRadius:BorderRadius.circular(19) ,
                boxShadow: const [BoxShadow(
                  offset:Offset(6,6),
                  color: Colors.grey,
                  blurRadius: 6
                )]
              ),
              child: Text('$data',style: const TextStyle(
                fontSize: 20,
                color: Color(0xff838485),
                fontWeight:FontWeight.bold
              ),),
                ),
              ]
            ),
        ),
      );
  }
}

