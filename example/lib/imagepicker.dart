import 'package:flutter/material.dart';

class ImageVi extends StatefulWidget {
  ImageVi({Key? key}) : super(key: key);

  @override
  State<ImageVi> createState() => _ImageViState();
}

class _ImageViState extends State<ImageVi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(children: [
        ElevatedButton(onPressed: (){


        }, child: Text("Success")),
        ElevatedButton(onPressed: (){



        }, child: Text("error"))
      ],)
    );
  }
}
