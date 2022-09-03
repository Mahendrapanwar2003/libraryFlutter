import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ui_library/ui_library.dart';

class ImageVi extends StatefulWidget {
  File? path;

  ImageVi({Key? key}) : super(key: key);

  @override
  State<ImageVi> createState() => _ImageViState();
}

class _ImageViState extends State<ImageVi> {
  @override
  Widget build(BuildContext context) {
    print("path:-1${widget.path?.path}");
    return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: (widget.path != null
                      ? FileImage(widget.path!)
                      : const NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"))
                  as ImageProvider,
            )),
        child: Column(
          children: [
            ElevatedButton(
              child: const Text("pickImage"),
              onPressed: () async {
                File? file = await MyImagePicker.pickImage(context: context);

                setState(
                  () async {
                    if (widget.path != null) widget.path = file;
                    print("widget.path:-4${widget.path?.path}");
                    print("widget.path:-4${file?.path}");
                  },
                );
              },
            ),
          ],
        ));
  }
}
