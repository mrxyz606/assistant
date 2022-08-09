
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets.dart';



class userinfo extends StatefulWidget {
  const userinfo({Key key}) : super(key: key);

  @override
  _userinfoState createState() => _userinfoState();
}

class _userinfoState extends State<userinfo> {
  @override
  Widget build(BuildContext context) {

        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors: [Colors.deepPurple,Colors.purple])),
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                nameplace(users[users.length-1]),
                emailplace(users[users.length-1]),

              ],),
          ),
        );
      }

}

