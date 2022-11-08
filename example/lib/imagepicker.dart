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
      body: Column(
        children: [
        /*  Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.px)),
            child: Row(
              children: [
                Expanded(flex:1,child: IconButton(onPressed: () {  }, icon: Icon(Icons.search),)),
                Expanded(child: TextFormField(),flex: 8,),
                Expanded(child: IconButton(onPressed: () {  }, icon: Icon(Icons.search),),flex: 1,)

              ],
            ),
          ),*/

          Flexible(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(
                minWidth: double.infinity,
                maxWidth: double.infinity,
                minHeight: 25.0,
                maxHeight: 135.0,
              ),
              child: new Scrollbar(
                child: new TextField(
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        top: 2.0,
                        left: 13.0,
                        right: 13.0,
                        bottom: 2.0),
                    hintText: "Type your message",
                    hintStyle: TextStyle(
                      color:Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
