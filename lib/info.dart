import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft,end:Alignment.bottomRight,colors: [Colors.purple,Colors.deepPurple] ),
          image: DecorationImage(
              image: AssetImage("assets/ramy.png"), fit: BoxFit.cover)),
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: const Text(
              "About Us",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          Container(
            child: const Text(
                  "Improving the health care and well bring is considered one of the civilized world challenges and sustainable development goals (SDGs) as a whole andone of Egypt grand challenges is specific, under the purpose of good health and saving the health care specifically in the saving the number of death older people who dead every year in caused of the sudden diseases , the Sudden crises caused by chronic diseases and external factors of the home like the leaking of the gas or the fire and other factors , we’re working to create an advanced-technology of Smart home to care the house condition and the gloves or system to determine the state of the human body whose functionality of how to reduce the reasons of his condition deteriorates, leading to death and increase the life time of having the good healthand providing the high efficiency , the reliable cost beside the long- lifetime age and decrease.the reasons that affects to death people",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
