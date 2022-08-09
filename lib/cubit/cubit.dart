
import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raamy/Screens/about%20us.dart';
import 'package:raamy/Screens/dashboard.dart';
import 'package:raamy/Screens/test.dart';
import 'package:sqflite/sqflite.dart';

import '../Screens/widgets.dart';
import '../bluetooth/bluetooth.dart';
import '../first.dart';
import '../info.dart';
import '../second.dart';
import 'states.dart';


class AppCubit extends Cubit<AppStates>{
AppCubit():super(AppInitialState());

static AppCubit get(context) => BlocProvider.of(context);
int currentIndex=0;


Database database;
Database databaset;
List <Widget> Screens =[
  bluetooth(),
  dashboard(),
  second(),
  AboutUs(),

];

void changeindex(int index) {
  currentIndex = index;
  emit(NavBar());
}


void creatDB() async {

  creatDBt();
  database = await openDatabase('sultan.db', version: 1,
      onCreate: (database, version) async {
        print('database created success');
        await database
            .execute(
            'CREATE TABLE users(id INTEGER PRIMARY KEY,email TEXT,name TEXT,password TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('there is an error!!!!$error');
        });
      }, onOpen: (database) {
        print('database opened success');
      });
}

Future insertToDB({@required email,@required name, @required password}) async {
  return await database.transaction((txn) {
    txn
        .rawInsert(
        'INSERT INTO users(email,name,password) VALUES("$email","$name","$password")')
        .then((value) {
      print('$value inserted success!!');
    }).catchError((error) {
      print('error!!!!$error');
    });
    return null;
  });
}

Future<List<Map>> getdata(database) async {
  return await database.rawQuery('SELECT * FROM users');
}

void creatDBt() async {
  creatDBt();
  databaset = await openDatabase('malak.db', version: 1,
      onCreate: (databaset, version) async {
        print('databaset created success');
        await databaset
            .execute(
            'CREATE TABLE disease(id INTEGER PRIMARY KEY,email TEXT,password TEXT)')
            .then((value) {
          print('tablet created');
        }).catchError((error) {
          print('there is an error!!!!$error');
        });
      }, onOpen: (databaset) {
    getdatat(database);
        print('databaset opened success');
      });
}

Future insertToDBt({@required email, @required password}) async {
  return await databaset.transaction((txn) {
    txn
        .rawInsert(
        'INSERT INTO disease(email,password) VALUES("$email","$password")')
        .then((value) {
      print('$value inserted success!!');
      getdatat(databaset);
    }).catchError((error) {
      print('error!!!!$error');
    });
    return null;
  });
}

Future<List<Map>>getdatat(databaset) async{

 have =[];

 donthave =[];

  await databaset.rawQuery('SELECT * FROM disease').then((value) {
    value.forEach((element) {
      if (element["password" ]== 'have')
        have.add(element);
      else if (element["password" ]== "not")
        donthave.add(element);


    });

  });
}
void deletdatabaset({@required int id}) async {
  databaset.rawDelete('DELETE FROM disease WHERE id = ?', [id]).then((value) {
    getdatat(databaset);
  });
  print("done");
}

}