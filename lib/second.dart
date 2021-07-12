import 'package:flutter/material.dart';
import './signup.dart';
import './login.dart';
@override
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState(){
    super.initState();
  _tabController=TabController(initialIndex: 1, length: 2, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
    }
Widget build(BuildContext context) {
  return Scaffold(
   appBar:AppBar(
        title: const Text('Torque Motor'),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Tab>[
            
            Tab(text: 'Sign Up',),
            Tab(text: 'Login',)
          ],
        )),
        
      
    body:TabBarView(
      controller: _tabController,
      children: <Widget>[
       Signup(),
       Login(),

      ],),
    );
    
  
}

}