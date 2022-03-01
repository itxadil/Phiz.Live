import 'package:flutter/material.dart';
import 'package:helloworld/contacts.dart';
import 'package:helloworld/discovery.dart';
import 'package:helloworld/settings.dart';
import 'chat.dart';
class afterloginclass extends StatefulWidget {
  @override
  _afterloginclassState createState() => _afterloginclassState();
}

class _afterloginclassState extends State<afterloginclass> {
  bool isSwitched = false;
  int _currentindex=0;
  final tabs=[
    chatclass(),
    contactclass(),
   // Center(child:Text('Contacts')),
      Discovery(),
            setting(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentindex,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.message_rounded),label:'Chat',backgroundColor: Colors.black),
                BottomNavigationBarItem(icon: Icon(Icons.contact_page),label:'Contacts',backgroundColor: Colors.black),
                      BottomNavigationBarItem(icon: Icon(Icons.animation),label:'Discover',backgroundColor: Colors.black),
                            BottomNavigationBarItem(icon: Icon(Icons.settings),label:'Settings',backgroundColor: Colors.black),

        ],
        onTap: (value){
          setState(() {
            _currentindex=value;
          });
        },

      ),
      body: tabs[_currentindex],
    );
  }
}