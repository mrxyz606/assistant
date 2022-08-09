import 'package:flutter/material.dart';

class first extends StatelessWidget {
  const first({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/ramy.png"), fit: BoxFit.cover),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple, Colors.purple])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Need Through the situation',
            style: TextStyle(fontSize: 35),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(25))),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/pharmacy.jpg',
                      height: 180,
                    ),
                    Text(
                      'Pharmacy',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text('5 min left', style: TextStyle(fontSize: 20))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(25))),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/doctor.png',
                      height: 180,
                    ),
                    Text(
                      'Doctor',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text('12 min left', style: TextStyle(fontSize: 20))
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(25))),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/fire.jpg',
                      height: 180,
                    ),
                    Text(
                      'Fire Fighter',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text('25 min left', style: TextStyle(fontSize: 20))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(25))),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/police.png',
                      height: 180,
                    ),
                    Text(
                      'Police',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text('20 min left', style: TextStyle(fontSize: 20))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
