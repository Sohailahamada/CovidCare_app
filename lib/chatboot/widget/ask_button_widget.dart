import 'package:flutter/material.dart';

class AskButtonWidget extends StatelessWidget {
  const AskButtonWidget({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffEFF6FA),
              borderRadius: BorderRadius.circular(19),
              boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(0.16),
                blurRadius: 6, offset: const Offset(6, 6),
              )]),
          child: Row(
            children: [
              Image.asset(
                'assets/images/chatIcon.png',
                height: 60,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Color(0xff3B74B9),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
