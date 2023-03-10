import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyUploadPage extends StatefulWidget {
  const MyUploadPage({Key? key}) : super(key: key);

  @override
  State<MyUploadPage> createState() => _MyUploadPageState();
}

class _MyUploadPageState extends State<MyUploadPage> {

  File? _image;
  final ImagePicker _picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actionsIconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text("Upload",style: TextStyle(color: Colors.black,fontSize: 24,fontFamily: "billabong"),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.upload),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              (_image == null) ?
              GestureDetector(
                onTap: _showPicker,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(.4),
                  child: Center(
                    child: Icon(Icons.add_a_photo, size: 45),
                  ),
                ),
              ) :
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Image.file(
                      _image!,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            _image = null;
                          });
                        },
                        icon: Icon(Icons.highlight_remove, color: Colors.black,),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Caption",
                      hintStyle: TextStyle(color: Colors.black)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPicker(){
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text("Pick Photo"),
                onTap: (){
                  _imgFromGallery();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text("Take Photo"),
                onTap: (){
                  _imgFromCamera();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _imgFromGallery() async {
    XFile? image = await _picker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    );
    setState(() {
      _image = File(image!.path);
    });
  }

  void _imgFromCamera() async {
    XFile? image = await _picker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    );
    setState(() {
      _image = File(image!.path);
    });
  }

}