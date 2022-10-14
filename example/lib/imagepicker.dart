import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_library/ui_library.dart';

class ImageVi extends StatefulWidget {
  ImageVi({Key? key}) : super(key: key);

  @override
  State<ImageVi> createState() => _ImageViState();
}

class _ImageViState extends State<ImageVi> {
  Animation<double>? controller;
  bool i =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(children: [
        ElevatedButton(onPressed: (){
          setState(() {
            i=!i;
          });
        }, child: Text("Success")),
       LottieBuilder.network(controller: controller,"https://assets3.lottiefiles.com/packages/lf20_095kjt08.json",repeat: i,)
      ],)
    );
  }
}



