import 'package:flutter/material.dart';

import 'chat_model.dart';
import 'shared/component.dart';

class ChatBoot extends StatefulWidget {
  const ChatBoot({Key? key,required this.text,required this.image,required this.listOfMessages}) : super(key: key);
  final String text;
  final String image;
  final List<ChatModel> listOfMessages;
  @override
  State<ChatBoot> createState() => _ChatBootState();
}

class _ChatBootState extends State<ChatBoot> {
  TextEditingController messageController = TextEditingController();

  // List<ChatModel> listOfMessages = [
  //   ChatModel(meassage: 'Hi', isSender: true),
  //   ChatModel(meassage: 'Hi ', isSender: false),
  //   ChatModel(meassage: 'I want to talk to Doctor ', isSender: true),
  //   ChatModel(meassage: 'acasc54a ', isSender: false),
  //   ChatModel(meassage: 'hjbasfkjasf ', isSender: true),
  //   ChatModel(meassage: 'hjbasfkjasf ', isSender: true),
  //   ChatModel(meassage: 'hjbasfkjasf ', isSender: true),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Image.asset('assets/images/rowt2.png',height: 36,)),
                    const Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(widget.text,style: const TextStyle(
                        color: Color(0xff0E81B9),
                        fontSize: 35,
                      ),),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff707070)),
                            borderRadius:BorderRadius.circular(13)
                        ),
                        child: Image.asset(widget.image,height: 80,)),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: widget.listOfMessages.map((e) {
                    return chatBubble(
                        message: e.meassage,
                        image: e.isSender
                            ? 'assets/images/chatperson.png'
                            : 'assets/images/pre1.png',
                        isSender: e.isSender);
                  }).toList(),
                ),
              ),
              sendMessage(
                messageController: messageController,
                function: () {
                  setState(() {
                    widget.listOfMessages.add(ChatModel(meassage: messageController.text, isSender: true));
                    messageController.clear();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

