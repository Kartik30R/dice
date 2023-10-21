
import 'dart:math';

import'package:flutter/material.dart';

void main(){
  runApp(GraadientColor());
}

class GraadientColor extends StatefulWidget{

const GraadientColor({super.key});

  @override
  State<GraadientColor> createState() => _GraadientColorState();
}

class _GraadientColorState extends State<GraadientColor> {
var numb=1;

void roll(){
  setState(() {
     numb= Random().nextInt(6) + 1;
  });
  
  
}
  
  @override
  Widget build(context) {
    
return MaterialApp(home: Scaffold(
    body:Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors:[Colors.blue,Color.fromARGB(31, 0, 61, 227)])
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text("$numb"),
          TextButton(onPressed: (){
          
              roll();
           
          } , child: Text("roll dice"))
        ],
          ),
      ),
    )
  ),
  );
  }}