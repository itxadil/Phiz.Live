import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class privacy extends StatefulWidget {
  @override
  _privacyState createState() => _privacyState();
}


class _privacyState extends State<privacy> {
  bool isSwitched1 = false;
  bool isSwitched2=false;
    bool isSwitched3 = false;
  bool isSwitched4=false;
    bool isSwitched5 = false;
  bool isSwitched6=false;
  bool isSwitched7=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),trailing: Icon(Icons.more_vert,color:Colors.black),title: Text('Privacy Settings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),),
        //SizedBox(height: 25,),
         SizedBox(height:20),
          Container(width: 328,height: 56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:ListTile(title:Text('Friend Verification',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor:Color(0xffE5E5E5), activeColor: Colors.red,value: isSwitched1,onChanged: (value){
            setState(() {
              isSwitched1=value;
            });
          },)
          )),
          SizedBox(height:10),
          Container(width: 328,height: 56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:ListTile(title:Text('Methods for friending me',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing: Icon(Icons.arrow_forward_ios,color:Colors.black),)),
           SizedBox(height:10),
            Container(width:328,height:115,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
        child:Column(children: [
        
          ListTile(title:Text('Hidden in Nearby',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor:Color(0xffE5E5E5), activeColor: Colors.red,value: isSwitched2,onChanged: (value){
            setState(() {
              isSwitched2=value;
            });
          },)
          ),
          Divider(height: 0.1,indent: 20,endIndent: 20,color: Colors.black,),
           ListTile(title:Text('Nearby Chat',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor: Color(0xffE5E5E5),activeColor: Colors.red,value: isSwitched3,onChanged: (value){
            setState(() {
              isSwitched3=value;
            });
          },)
          ),
        ])),
        SizedBox(height:10),
        Container(width:328,height:115,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
        child:Column(children: [
        
          ListTile(title:Text('Encrypted message trans',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor:Color(0xffE5E5E5), activeColor: Colors.red,value: isSwitched4,onChanged: (value){
            setState(() {
              isSwitched4=value;
            });
          },)
          ),
          Divider(height: 0.1,indent: 20,endIndent: 20,color: Colors.black,),
           ListTile(title:Text('Knowing you are typing',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor: Color(0xffE5E5E5),activeColor: Colors.red,value: isSwitched5,onChanged: (value){
            setState(() {
              isSwitched5=value;
            });
          },)
          ),
        ])),
        SizedBox(height:10),
        Container(width: 328,height: 56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:ListTile(title:Text('Multi-device login',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor:Color(0xffE5E5E5), activeColor: Colors.red,value: isSwitched6,onChanged: (value){
            setState(() {
              isSwitched6=value;
            });
          },)
          )),
             SizedBox(height:10),
        Container(width: 328,height: 56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:ListTile(title:Text('TabBar Vibration Tip',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Switch(inactiveThumbColor:Color(0xffE5E5E5), activeColor: Colors.red,value: isSwitched7,onChanged: (value){
            setState(() {
              isSwitched7=value;
            });
          },)
          )),
          
      ]))
    );
}
}