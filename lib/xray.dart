import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class XrayPage extends StatefulWidget {
  const XrayPage({Key? key}) : super(key: key);
  @override
  _XrayPageState createState() => _XrayPageState();
}
class _XrayPageState extends State<XrayPage> {
  final ImagePicker _picker = ImagePicker();
  File? imagePath;
  Future<void> takeImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagePath = File(image!.path);
    });
  }
  Future<void> takeImageByCamera() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      imagePath = File(photo!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child  : SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child:
                (imagePath == null) ? Text("No Image") :
                Image.file(imagePath!,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                onTap: () {
                  takeImageFromGallery();
                },
                child: Row(
                  mainAxisSize:MainAxisSize.min ,
                  children: const [
                    Icon(Icons.image,
                      color: Color(0xff3B74B9),
                    ),
                    Text('Use from gallery',
                      style: TextStyle(
                        color: Color(0xff3B74B9),
                      ),
                    ),
                  ],
                ),
                // icon: const Icon(Icons.camera),
              ),
              InkWell(
                onTap: () {
                  takeImageByCamera();
                },
                child: Row(
                  mainAxisSize:MainAxisSize.min ,
                  children: const [
                    Icon(Icons.camera,
                    ),
                    Text('Use from camera',
                      style: TextStyle(
                        color: Color(0xff3B74B9),
                      ),)
                  ],
                ),
                // icon: const Icon(Icons.camera),
              ),
              Container(
                child: const Text(
                    'There is a coarsening of lung markings more evident at the lower fields but no clear consoldation'),
                color: Color(0xffECD59E),
                padding: const EdgeInsets.all(10.00),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text("Get Result",
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white)),
                color: Color(0xff3B74B9),
              )
            ],
          ),
        ),
      ),
    );
  }
}