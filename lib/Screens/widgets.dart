import 'package:flutter/material.dart';


    List<Map> users=[];
    List<Map> userst=[];
    List<Map> have = [];
    List<Map> donthave = [];

    Widget textfeald({
      @required TextEditingController contraller,
      @required TextInputType inputtype,
      @required String thename,
      @required IconData prefixicon,
      bool show=false,
      Widget suffixfun,
      Function validator
    }) => Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: TextFormField(
          validator: validator,obscureText: show,
          style: TextStyle(
              color: Colors.white
          ),
          controller: contraller,
          keyboardType: inputtype,
          decoration: InputDecoration(

            labelText: "$thename",
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            fillColor: Colors.white,
            prefixIcon: Icon(
              prefixicon,color: Colors.black,
            ),suffix: suffixfun,
            border: OutlineInputBorder(),

          ),
        ),
      ),
    );

    Widget flatButton({
      var name,
      var coloor, var x
    })=>FlatButton(onPressed: (){
     x();

    }, child: Container(
      child: Text(name,style: TextStyle(fontSize: 40),),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)
      ),border: Border.all(width: 2),color: coloor
      ),
    ));



    Widget nameplace(Map model) =>Row(children: [
      Text('Your Name:',style: TextStyle(fontSize: 30,color: Colors.white),),
      Text('${model["name"]}',style: TextStyle(fontSize: 30,color: Colors.white),)


    ],);
    Widget emailplace(Map model) =>Column(children: [
      Text('Your email:',style: TextStyle(fontSize: 25,color: Colors.white),),
      Text('${model["email"]}',style: TextStyle(fontSize: 20,color: Colors.white),)


    ],);

