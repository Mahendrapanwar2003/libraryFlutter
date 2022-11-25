import 'dart:async';

import 'package:example/database_const.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? db;

  static final DatabaseHelper databaseHelperInstance = DatabaseHelper._privateConstructor();

  DatabaseHelper._privateConstructor();

  factory DatabaseHelper(){
    return databaseHelperInstance;
  }

  Future<Database?> openDB() async{
    print('path of:::::::${await getDatabasesPath()+DatabaseConst.databaseName}');
    db=await openDatabase(join(await getDatabasesPath(),DatabaseConst.databaseName));
    return db;
    }

  Future<void> closeDB() async {
    final db = await databaseHelperInstance.openDB();
    db?.close();
  }

  Future<void> createDatabase({required Database? db})
     async {
       print('path of:datadatadata');

       await db?.execute('CREATE TABLE IF NOT EXISTS ${DatabaseConst.tableName}(${DatabaseConst.columnId} ${DatabaseConst.idType}, ${DatabaseConst.columnName} ${DatabaseConst.textType}, ${DatabaseConst.columnAge} ${DatabaseConst.intType})');
    }




}
