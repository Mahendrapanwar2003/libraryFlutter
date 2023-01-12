import 'package:flutter/material.dart';
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
      body: Listener(
        onPointerDown: (event)  {
          print("nvdnsknkjbdkjfbvkbfdjkbvkjbfjk::::::::::1::::::${event}");
          showDialog(context: context, builder: (context) =>myDialog(url: widget.url));
        },
        onPointerUp: (event)  {
          print("nvdnsknkjbdkjfbvkbfdjkbvkjbfjk::::::::::2::::::${event}");
          Navigator.pop(context);
        },
        child: Center(
            child: Image.network(
          widget.url,
          height: 200,
          width: 200,
        )),
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
