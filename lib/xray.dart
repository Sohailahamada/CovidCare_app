import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/xray2.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tflite/tflite.dart';
class XrayPage extends StatefulWidget {
  const XrayPage({Key? key}) : super(key: key);
  @override
  _XrayPageState createState() => _XrayPageState();
}
class _XrayPageState extends State<XrayPage> {
  late File file;
  late File file1;
  late List _result;
   String _confidence="" ;
   String _name="";
   String _numbers="";
  var imagepicker = ImagePicker();
  uploadimageGallery () async {
    var imgpicked = await imagepicker.getImage(source: ImageSource.gallery);
    if (imgpicked!=null) {
        file = File (imgpicked.path);
        var nameimage = basename(imgpicked.path);
        //start upload
        var refstorge = FirebaseStorage.instance.ref('images/$nameimage');
        await refstorge.putFile(file);
        var url = refstorge.getDownloadURL();
        print("url : $url");
      }else{
      print("please choose image");}}
  uploadimageCamera () async {
    var imgpicked = await imagepicker.getImage(source: ImageSource.camera);
    if (imgpicked!=null)
    {
      file1 = File (imgpicked.path);
      var nameimage = basename(imgpicked.path);
      //start upload
      var refstorge = FirebaseStorage.instance.ref('images/$nameimage');
      await refstorge.putFile(file1);
      var url = refstorge.getDownloadURL();
      print("url : $url");

    }else{
      print("please choose image");}}
  loadmymodel () async {
    var resultant = await Tflite.loadModel(model: "assets/covid_model.tflite",labels: "assets/lables.txt");
    print("ruselt is : $resultant");

}
@override
  void initState() {
    super.initState();
    loadmymodel();
  }
  applymodeltoimage(File file)async{
    var res= await Tflite.runModelOnImage(path: file.path,
    numResults: 2,
    threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _result = res!;
      String str = _result[0]["label"];
      _name="";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child  : SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/logo_login.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(95.0),
                  ),
                ),

                SizedBox(height: 100,),
                InkWell(
                  onTap: () async {
                    await uploadimageGallery();
                  },
                  child: Row(
                    mainAxisSize:MainAxisSize.min ,
                    children: const [
                      Icon(Icons.image,
                        color: Color(0xff3B74B9),
                      ),
                      Text('  Use from gallery',
                        style: TextStyle(
                          color: Color(0xff3B74B9),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  // icon: const Icon(Icons.camera),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: () async {
                    await uploadimageCamera();
                  },
                  child: Row(
                    mainAxisSize:MainAxisSize.min ,
                    children: const [
                      Icon(Icons.camera_alt_outlined,
                      ),
                      Text('  Use from camera',
                        style: TextStyle(
                          color: Color(0xff3B74B9),
                          fontSize: 20,
                        ),)
                    ],
                  ),
                  // icon: const Icon(Icons.camera),
                ),
                SizedBox(height: 40,),
                MaterialButton(
                  height: 50,
                  shape: const StadiumBorder(),
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => xray2(),
                      ),
                    );
                  },
                  child: const Text("Get Result",
                      style: TextStyle(
                          fontSize: 20, letterSpacing: 2.2, color: Colors.white)),
                  color: Color(0xff3B74B9),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 290.0,
                  height: 90.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<File?>('file', file));
  }
}