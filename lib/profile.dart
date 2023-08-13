import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;

  void _setImage(File? image) {
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40 * fem, 128 * fem, 40 * fem, 48 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 86 * fem, 91 * fem),
              child: Text(
                'Profile details',
                style: SafeGoogleFont(
                  'Sk-Modernist',
                  fontSize: 34 * fem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * fem / fem,
                  color: Color(0xffb3bfc4),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(97 * fem, 0 * fem, 97 * fem, 37 * fem),
              width: double.infinity,
              height: 106 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 99 * fem,
                        height: 99 * fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25 * fem),
                          // ... Add image display code here ...
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 67 * fem,
                    top: 72 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 34 * fem,
                        height: 34 * fem,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ImageInputWidget(onImageSelected: _setImage)),
                            );
                          },
                          icon: Icon(
                            Icons.camera,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ... Other widgets ...
          ],
        ),
      ),
    );
  }
}

class SafeGoogleFont extends TextStyle {
  SafeGoogleFont(
      String fontFamily, {
        double fontSize = 14,
        FontWeight fontWeight = FontWeight.w400,
        double height = 1.5,
        Color color = Colors.black,
      }) : super(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: height,
    color: color,
  );
}

class ImageInputWidget extends StatefulWidget {
  final void Function(File?) onImageSelected;

  ImageInputWidget({required this.onImageSelected});

  @override
  _ImageInputWidgetState createState() => _ImageInputWidgetState();
}

class _ImageInputWidgetState extends State<ImageInputWidget> {
  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      widget.onImageSelected(File(pickedImage.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _pickImage(ImageSource.camera),
            child: Text("Take Picture"),
          ),
          ElevatedButton(
            onPressed: () => _pickImage(ImageSource.gallery),
            child: Text("Choose from Gallery"),
          ),
        ],
      ),
    );
  }
}