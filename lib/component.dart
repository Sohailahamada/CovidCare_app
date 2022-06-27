import 'package:flutter/material.dart';

import 'bubble_special_three.dart';

AppBar defaultAppBar({
  Widget? leading,
  Widget? title,
  Widget? action,
}) =>
    AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10, top: 5),
        child: IconButton(
          onPressed: () {},
          icon: leading!,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(
          top: 35,
        ),
        child: title,
      ),
      centerTitle: true,
      actions: [
        Container(
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), border: Border.all()),
          child: action,
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );

Widget chatBubble({
  required String message,
  required String image,
  required bool isSender,
}) {
  return isSender
      ? Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BubbleSpecialThree(
              text: message,
              color: const Color(0xFF1B97F3),
              tail: true,
              textStyle: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Image(
              height: 50,
              width: 30,
              image: AssetImage(image),
            ),
          ],
        )
      : Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image(
              height: 50,
              width: 30,
              image: AssetImage(image),
            ),
            BubbleSpecialThree(
              text: message,
              color: const Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
          ],
        );
}

Widget sendMessage({
  required TextEditingController messageController,
  required var function,
}) =>
    Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: TextFormField(
                controller: messageController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type your message here ...',
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            child: MaterialButton(
              onPressed: function,
              minWidth: 1,
              //color: defaultColor,
              child: Image(
                image: AssetImage('assets/images/sendIcon.png'),
              ),
            ),
          ),
        ],
      ),
    );
