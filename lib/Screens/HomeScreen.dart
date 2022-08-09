import 'package:flutter/material.dart';

import 'LoginForm.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 28.0,right: 28.0),
        child: Column(
          children: [
            Image.asset('assets/back.png'),
            Text("Welcome",style: TextStyle(
              color: Colors.indigo[800],
              fontSize: 50
            )),
            Text('Sign in to continue',style: TextStyle(fontSize: 20)),
            TextButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginForm()));
                },
                child: (Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10),),
                    color: Colors.indigo[500]
                  ),child: Center(child: Text('Sign in ',style: TextStyle(fontSize: 30,color: Colors.white))),
                ))),
            Text('or',style: TextStyle(fontSize: 20),),
            TextButton(
                onPressed: (){},
                child: (Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                      color: Colors.blue[800]
                  ),child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/facebook.png',height: 80,),
                      Text('Sign in with Facebook',style: TextStyle(color: Colors.white,fontSize: 30)),
                    ],
                  ),
                )))
          ],
        ),
      ),
    );
  }
}
