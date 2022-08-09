import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'HomeForm.dart';

class test extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.black,
                        size: 60,
                      ),
                      Text(
                        'Your Information',
                        style: TextStyle(fontSize: 25, color: Colors.indigo),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return HomeForm();
                        }));
                  },
                ),
                FlatButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.accessibility_rounded,
                        color: Colors.black,
                        size: 60,
                      ),
                      Text(
                        'Medical Records',
                        style: TextStyle(fontSize: 25, color: Colors.indigo),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return test();
                        }));
                  },
                ),
                FlatButton(
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.heartbeat,
                        color: Colors.black,
                        size: 60,
                      ),
                      SizedBox(width: 50,),
                      Text(
                        'Status',
                        style: TextStyle(fontSize: 25, color: Colors.indigo),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return test2();
                        }));
                  },
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lightBlue[100],
                  Colors.white70,
                ]),
          ),
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black, size: 30.0),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeForm()));
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                  size: 50.0,
                )),
          )
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/15 Medical Records.jpg'),fit: BoxFit.cover)),
        ),
      ),
    );
  }
}


class test2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.black,
                        size: 60,
                      ),
                      Text(
                        'Your Information',
                        style: TextStyle(fontSize: 25, color: Colors.indigo),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return HomeForm();
                        }));
                  },
                ),
                FlatButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.accessibility_rounded,
                        color: Colors.black,
                        size: 60,
                      ),
                      Text(
                        'Medical Records',
                        style: TextStyle(fontSize: 25, color: Colors.indigo),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return test();
                        }));
                  },
                ),
                FlatButton(
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.heartbeat,
                        color: Colors.black,
                        size: 60,
                      ),
                      SizedBox(width: 50,),
                      Text(
                        'Status',
                        style: TextStyle(fontSize: 25, color: Colors.indigo),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return test2();
                        }));
                  },
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lightBlue[100],
                  Colors.white70,
                ]),
          ),
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black, size: 30.0),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeForm()));
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                  size: 50.0,
                )),
          )
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 00.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/17 Stats.jpg'),fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
