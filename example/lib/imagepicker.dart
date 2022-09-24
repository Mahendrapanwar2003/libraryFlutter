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
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                const SizedBox(
                  height: 30,
                  child: HeaderWidget(
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
