import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({Key? key, this.file}) : super(key: key);
  final XFile? file;

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(child: Image.file(File(widget.file!.path)))
        ],
      ),
    );
  }
}
