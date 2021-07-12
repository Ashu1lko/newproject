import 'package:flutter/material.dart';
import './second.dart';
import 'dart:async'; 


  class Home extends StatefulWidget {
  
  _Home createState() => new _Home();
}

class _Home extends State<Home> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            ));
  }

@override
Widget build(BuildContext context) {
  
  return Scaffold(
     
      body: Center(
              
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset('assets/images/torquelogo.png'),
          )
          ),
      );
      
  
    
  
}
}
