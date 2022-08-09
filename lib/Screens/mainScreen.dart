import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raamy/Screens/HomeForm.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';


class MainScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return BlocProvider(create:(BuildContext context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
          listener:(BuildContext context,AppStates state){} ,
          builder:(BuildContext context,AppStates state){
            var cubit=AppCubit.get(context);
            return Scaffold(
              drawer: Drawer(child:Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(child: Row(children: [
                        Icon(Icons.account_circle,color: Colors.white,size: 60,),Text('Your Information',style: TextStyle(fontSize: 25,color: Colors.white),)
                      ],),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return HomeForm();
                              }));
                        },
                      )


                    ],),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.black87,
                        Colors.black54,
                      ]),
                ),) ,),

              body: cubit.Screens[cubit.currentIndex],

              bottomNavigationBar: CurvedNavigationBar(
                onTap: (index){
                  cubit.changeindex(index);


                },

                items: [
                  Icon(Icons.bluetooth,size: 20,color: Colors.black,),
                  Icon(Icons.local_phone_rounded  ,size: 20,color: Colors.black,),
                  Icon(Icons.list_alt_sharp,size: 20,color: Colors.black,),
                  Icon(Icons.location_history_outlined  ,size: 20,color: Colors.black,),
                ],
              ),
            );

          }),
    );
  }
}
