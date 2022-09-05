import 'dart:io';

import 'package:flutter/material.dart';

class Img extends StatefulWidget {
  File path;
   Img({Key? key,required this.path}) : super(key: key);

  @override
  State<Img> createState() => _ImgState();
}

class _ImgState extends State<Img> {
  @override
  Widget build(BuildContext context) {
    print("path my:-${widget.path}");
    return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
        image: (widget.path!= null?FileImage(widget.path):const NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg")) as ImageProvider,
    )
    ),
    );
  }
}
