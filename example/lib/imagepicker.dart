import 'package:example/database_const.dart';
import 'package:example/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:ui_library/ui_library.dart';

class ImageVi extends StatefulWidget {
   ImageVi({Key? key}) : super(key: key);
  Database? database;
  @override
  State<ImageVi> createState() => _ImageViState();
}

class _ImageViState extends State<ImageVi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: const Text("Insert Data"),onPressed: () async {
         await insertIntoDatabase();
        },),
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
