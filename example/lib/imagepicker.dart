import 'package:example/database_const.dart';
import 'package:example/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:ui_library/ui_library.dart';

class ImageVi extends StatefulWidget {
   ImageVi({Key? key}) : super(key: key);
  Database? database;
  String color="#00FF00";

  @override
  State<ImageVi> createState() => _ImageViState();
}

class _ImageViState extends State<ImageVi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:Column(
         children: [
           Container(
             height: 100,
             width: 100,
             color: Color(0xff),
           ),

           SizedBox(height: 50,)
           ,
           ElevatedButton(onPressed: (){
             print("colorcolorcolor::::::::${widget.color}");
             String colorone=widget.color.replaceAll("#", "0xff");
             print("colorcolorcolor::::::::${colorone}");
             int i=int.parse(colorone);
             print("colorcolorcolor::::::::${i}");
             print("colorcolorcolor::::::::${Color(i)}");




           }, child: Text("checkColor")),
         ],
       ),
        ),
    );
  }

  Future<Database?> openDB()
  async{
    widget.database=await DatabaseHelper().openDB();
    await DatabaseHelper().createDatabase(db: widget.database);
    return widget.database;
  }

  Future<void> closeDB()
  async{
    await DatabaseHelper().closeDB();
  }

  /* INSERT , UPDATE ,DELETE ,READ METHODS*/

  Future<void> insertIntoDatabase()async{

    await openDB();
    Map<String,dynamic> data={
      DatabaseConst.columnName:'MANISH',
      DatabaseConst.columnAge:10,
    };
    final id=await widget.database?.insert(DatabaseConst.tableName, data);
    print("rowId:::::::${id}");

    await closeDB();
  }
}
