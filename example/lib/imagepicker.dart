import 'package:flutter/material.dart';
import 'package:ui_library/ui_library.dart';

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

          ShowMToast toast = ShowMToast();

          toast.successToast(context, message: "Hello", alignment: Alignment.bottomCenter,icon: Icons.verified,);

        }, child: Text("Success")),
        ElevatedButton(onPressed: (){

          ShowMToast toast = ShowMToast();

          toast.errorToast(context, message: "Hello", alignment: Alignment.bottomCenter,icon: Icons.cancel);

        }, child: Text("error"))
      ],)
    );
  }
}
