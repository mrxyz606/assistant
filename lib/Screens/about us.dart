import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raamy/Screens/test.dart';

import 'HomeForm.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.lightBlue[100],
          child: Column(children: [
            Image.asset(
              'assets/back.png',
              height: 300,
              width: 300,
            ),
            const Text(
                '''The "Behind U' system is about to go live, it is an intelligent monitoring system-a home system designed with a tracking bracelet that cares about the elderly by intelligent technology, By displaying the state of their health and surrounding environment in this work we're. working to create an advanced technology of Smart home to care the house condition and the gloves or system to determine the state of the human body whose functionality of how to reduce the reasons of his condition deteriorates, leading to death and increase the lifetime of having bright health and providing the high efficiency, the reliable cost besides the long-Lifetime age and decrease the reasons that affect to death people. Al the gathered data is connected by an application under the Ministries of Health and Communications management to take the necessary action towards any error. The reason of solving one of(SDGs) that's under the purpose of good health and saving the health care specifically in the saving the number of death older people who die every yea in the cause of the sudden diseases, the Sudden crises caused by chronic diseases and external factors of the home like the leaking of the gas or the fire and other factors.''',
                style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.lightBlue),
                  child: Center(child: Text('Contact US', style: TextStyle(color:Colors.white,fontSize: 40))),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
