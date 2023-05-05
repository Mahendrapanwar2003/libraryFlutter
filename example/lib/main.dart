import 'package:example/show_image.dart';
import 'package:flutter/material.dart';
import 'package:web_browser/web_browser.dart';

void main() {
  // Slow down time to see Hero flight animation.
  runApp(const MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Browser(
          initialUriString: 'https://www.dollopinfotech.com/',
        ),
      ),
    ),
  ));
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




