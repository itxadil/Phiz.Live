import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class notifications extends StatefulWidget {
  @override
  _notificationsState createState() => _notificationsState();
}


class _notificationsState extends State<notifications> {
  bool isSwitched1 = false;
  bool isSwitched2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),trailing: Icon(Icons.more_vert,color:Colors.black),title: Text('Notifications',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),),
        //SizedBox(height: 25,),
         SizedBox(height:20),
         Container(width:328,height:115,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
        child:Column(children: [
        
          ListTile(title:Text('Ring when message comes',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor:Color(0xffE5E5E5), activeColor: Colors.red,value: isSwitched1,onChanged: (value){
            setState(() {
              isSwitched1=value;
            });
          },)
          ),
          Divider(height: 0.1,indent: 20,endIndent: 20,color: Colors.black,),
           ListTile(title:Text('Vibration of incoming news',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor: Color(0xffE5E5E5),activeColor: Colors.red,value: isSwitched2,onChanged: (value){
            setState(() {
              isSwitched2=value;
            });
          },)
          ),
        ]))
      ]))
      );
  }
}