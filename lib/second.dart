import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
   appBar:AppBar(
        title: const Text('Torque Motor')),
   backgroundColor: Theme.of(context).primaryColor,
   elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Tab>[
            
            Tab(text: 'Sign Up',),
            Tab(text: 'Login',)
          ],
        ),
        actions: <Widget>[Icon(Icons.search),Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),Icon(Icons.more_vert)],
      
    body:TabBarView(
      controller: _tabController,
      children: <Widget>[
       Signup(),
       Login(),

      ],),
    );
    
  
}
