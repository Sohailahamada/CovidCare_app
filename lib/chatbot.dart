import 'package:flutter/material.dart';
import 'package:flutter_app1/chatboot/widget/ask_button_widget.dart';

import 'chat_model.dart';
import 'chatbot1.dart';

class Chatboot extends StatelessWidget {
  const Chatboot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo_login.png',
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
            AskButtonWidget(
              text: 'Contact a Doctor ?',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatBoot(
                      text: 'Doctor',
                      image: 'assets/images/DoctorsIcon.png',
                      listOfMessages: [
                        ChatModel(
                            meassage: 'Hi ',
                            isSender: true),
                        ChatModel(meassage: 'Hi ', isSender: false),
                        ChatModel(meassage: 'Welcome to Covid Care application ', isSender: false),
                        ChatModel(meassage: 'What do you feel? ', isSender: false),
                        ChatModel(
                            meassage: 'i feel Iam exhausted and i think my chest hurts me', isSender: true),
                        ChatModel(meassage: 'Ok you should go to the Radiology and send us the result ', isSender: false),
                        ChatModel(meassage: 'Thanks for using Covid Care application.Wish you better health ', isSender: false),
                      ],
                    )));
              },
            ),
            AskButtonWidget(
              text: 'Ask about the symptoms ?',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatBoot(
                      text: 'Symptoms ',
                      image: 'assets/images/symp.png',
                      listOfMessages: [
                        ChatModel(
                            meassage: 'Hi',
                            isSender: true),
                        ChatModel(meassage: 'Hi', isSender: false),
                        ChatModel(meassage: 'Welcome to Covid Care application ', isSender: false),
                        ChatModel(meassage: 'What do you feel? ', isSender: false),
                        ChatModel(
                            meassage: 'I think I am a Cavid-19 patient', isSender: true),
                        ChatModel(meassage: ' I feel sick a little bit', isSender: true),
                        ChatModel(meassage: 'First, you should have a rest ', isSender: false),
                        ChatModel(meassage: 'Second, you should go lab to be exaimned and send results to our application ', isSender: false),
                        ChatModel(meassage: 'Thanks for using Covid Care application ', isSender: false),
                      ],
                    )));
              },
            ),
            AskButtonWidget(
              text: 'Reminder for medicine !',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatBoot(
                      text: 'Reminder',
                      image: 'assets/images/reminderIcon.png',
                      listOfMessages: [
                        ChatModel(
                            meassage: 'Hi ',
                            isSender: true),
                        ChatModel(meassage: 'Hi ', isSender: false),
                        ChatModel(meassage: 'Welcome to Covid Care application ', isSender: false),
                        ChatModel(meassage: 'We are experienced in Time Management and we can remind you with the scheduale for your drug ', isSender: false),
                        ChatModel(
                            meassage: 'How can you help me? ', isSender: true),
                        ChatModel(
                            meassage: 'First,Send us your prescription and we will organize your scheduale with the help of doctors', isSender: false),ChatModel(
                            meassage: 'Thanks for using Covid Care application ', isSender: false),
                      ],
                    )));
              },
            ),
          ],
        ),
      ),
    );
  }
}


