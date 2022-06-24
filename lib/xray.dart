import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
class XrayPage extends StatefulWidget {
  const XrayPage({Key? key}) : super(key: key);
  @override
  _XrayPageState createState() => _XrayPageState();
}
class _XrayPageState extends State<XrayPage> {
  late File file;
  var imagepicker = ImagePicker();
  uploadimage () async
  {
    // ignore: deprecated_member_use
    var imgpicked = await imagepicker.getImage(source: ImageSource.camera);
    if (imgpicked != null)
    {
      file = File (imgpicked.path);
      var nameimage = basename(imgpicked.path);
      //start upload
      var refstorge = FirebaseStorage.instance.ref("images/$nameimage");

      //end upload
    }else{
      print("please choose image");
    }

  }
  File? imagePath;
  Future<void> takeImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() async {
      imagePath = File(image!.path);
      var nameimage = basename(image.path);

      //start upload
      var refstorge = FirebaseStorage.instance.ref('images/$nameimage');
      await refstorge.putFile(imagePath!);
      var url = refstorge.getDownloadURL();
      print("url : $url");

      //end upload
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
                onTap: ()  async {
                  // takeImageFromGallery();
                  await uploadimage();
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
                onTap: () async {
                  await uploadimage();
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