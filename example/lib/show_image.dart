import 'package:flutter/material.dart';
import 'package:ui_library/ui_library.dart';
class ImageShow extends StatefulWidget {
  ImageShow({Key? key}) : super(key: key);
  String url="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png";
  @override
  State<ImageShow> createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()  async {
          Map<String,dynamic>? data=await  MyLocation.getCurrentLocation(context: context);
          print("data:::${data}");
        }, child: Text("GetLocation"),),
      ),
    );
  }


  Widget myDialog({required String url}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(url,fit: BoxFit.fitWidth,)
          ],
        ),
      ),
    );
  }
}
