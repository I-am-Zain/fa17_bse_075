import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fa17_bse_075/navigation_drawer.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MaterialApp(
          title: 'Dice app',
          home: HomePage(),
          theme: ThemeData(
              primarySwatch: Colors.blue,
          ),

        ),),));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('image/zain.jpg'),height: 300,),
            SizedBox(height: 10,),
            Text('Zain-ul-Abideen', style: TextStyle(fontSize: 30,color: Colors.redAccent),),
            SizedBox(height: 10,),
            Text('FA17-BSE-075', style:  TextStyle(fontSize: 20,color: Colors.redAccent),),
            SizedBox(height: 10,),

          ],
        ));
  }
}
