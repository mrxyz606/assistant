import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raamy/Screens/test.dart';

import 'HomeForm.dart';


class dashboard extends StatelessWidget {
  const dashboard({Key key}) : super(key: key);

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
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue[100]

            ),
        child: Column(
          children: [

            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Emergency',style: TextStyle(fontSize: 50,color: Colors.indigo)),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 28.0,right: 28.0,bottom: 50),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search',style: TextStyle(fontSize: 35,color: Colors.indigo),),
                  Icon(Icons.search,size: 40),

                ],
              ),),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(25))),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/badge.png',
                            height: 180,
                          ),
                          Text(
                              'PLOICE',
                            style: TextStyle(fontSize: 30,color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(25))),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/firefighter.png',
                            height: 180,
                          ),
                          Text(
                            'FIRE FIGHTER',
                            style: TextStyle(fontSize: 30,color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(25))),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/doctor.png',
                            height: 180,
                          ),
                          Text(
                              'DOCTOR',
                            style: TextStyle(fontSize: 30,color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(25))),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/pharmacy.png',
                            height: 180,
                          ),
                          Text(
                            'PHARMACY',
                            style: TextStyle(fontSize: 30,color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
