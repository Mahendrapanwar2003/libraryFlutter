import 'package:example/imagepicker.dart';
import 'package:example/show_image.dart';
import 'package:flutter/material.dart';

void main() {
  // Slow down time to see Hero flight animation.
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ImageShow(),
    );
  }
}



