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
    return ResponsiveSizer(
      builder: (p0, p1, p2) => Scaffold(
        body: HeaderWidget(
            height: 15.h, height1: 20.h, height2: 25.h, height3: 30.h),
      ),
    );
  }
}
