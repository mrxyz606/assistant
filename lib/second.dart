import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'Screens/HomeForm.dart';
import 'Screens/test.dart';

class second extends StatefulWidget {
  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  List desease = [ 'press here','diabetes', 'anemia', 'heart disease', 'High pressure', 'low pressure'];

  List deseaseText = [ '','200mg/dL', 'anemia', 'heart disease', 'High pressure', 'low pressure'];

  int deseaseNum = 0;
  var date='\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t';

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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0, bottom: 40.0),
                  child: const Text(
                    'Feed System',
                    style: TextStyle(fontSize: 50, color: Colors.indigo),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28.0, bottom: 40.0, top: 48),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.search, size: 40),
                        PopupMenuButton(
                          child: Text(desease[deseaseNum],style: TextStyle(color: Colors.grey,fontSize: 30)),
                            color: Colors.blue[100],
                            elevation: 50,
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            ),
                            itemBuilder:(context) => [
                              PopupMenuItem(
                                child: Text(desease[1]),
                                value: 1,
                                onTap: (){setState(() {
                                  deseaseNum=1;
                                });},
                              ),
                              PopupMenuItem(
                                child: Text(desease[2]),
                                value: 2, onTap: (){setState(() {
                                deseaseNum=2;
                              });},
                              ),
                              PopupMenuItem(
                                child: Text(desease[3]),
                                value: 3, onTap: (){setState(() {
                                deseaseNum=3;
                              });},
                              ),
                              PopupMenuItem(
                                child: Text(desease[4]),
                                value: 4, onTap: (){setState(() {
                                deseaseNum=4;
                              });},
                              ),
                              PopupMenuItem(
                                child: Text(desease[5]),
                                value: 5, onTap: (){setState(() {
                                deseaseNum=5;
                              });},
                              ),

                            ]
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.mapMarkerAlt, size: 40),
                        Text(
                          deseaseText[deseaseNum],
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 38, left: 28.0, right: 28.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.solidCalendarAlt, size: 40),
                        TextButton(
                          child: Text(
                            date,
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: (){
                            showDatePicker(
                              lastDate:DateTime.parse('2025-06-20') ,
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                )
                                .then((value) {
                              setState(() {
                                date =
                                    DateFormat.yMMMd().format(value);
                              });
                            });

                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.indigo[700],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                            child: Text(
                          'Search',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Contains:',
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(
                      FontAwesomeIcons.slidersH,
                      size: 30,
                    )
                  ],
                ),
              ),
              row('assets/green.jpg'," Broccoli", "40 Cal"),
              row('assets/flaxseeds.jpg'," Flaxseeds", "85 Cal"),
              row('assets/garlic.jpg'," Garlic", "75 Cal"),
              row('assets/download.jpg'," Squash", "20 Cal"),
            ],
          ),
        ),
      ),
    );
  }

  Widget row(
    String imageName,
      String vegName,
      String cal,
  ) =>
    Padding(
      padding: const EdgeInsets.only(left: 28.0,right: 20,top: 15,bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [Container(
            height: 80,width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage(imageName,),fit: BoxFit.fill
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
            SizedBox(width: 30,),
            Column(
              children: [
                Text(vegName, style: TextStyle(color: Colors.black,fontSize: 20)),
                Text(cal, style: TextStyle(color: Colors.grey,fontSize: 20)),
              ],
            ),],),
          Icon(
            Icons.add,
            size: 30,
          )
        ],
      ),
    );
}
