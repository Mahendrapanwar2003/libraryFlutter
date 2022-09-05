import 'package:flutter/material.dart';
import 'package:ui_library/ui_library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (c, r, s) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      );
    });
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (c, o, st) {
        return Container(
          color: Colors.blue,
          child: ListView(
            children: [
              Image.network(
                "http://www.androidcoding.in/wp-content/uploads/flutter_banner_imageslider.png",
                width: 90.w,
                height: 240.px,
                fit: BoxFit.fill,
              ),
              Text(
                "djsbdh nd sb dbs dbs d sbnd snb dnbs db sb dbs b",
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                "djsbdh nd sb dbs dbs d sbnd snb dnbs db sb dbs b",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                "djsbdh nd sb dbs dbs d sbnd snb dnbs db sb dbs b",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                "djsbdh nd sb dbs dbs d sbnd snb dnbs db sb dbs b",
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
