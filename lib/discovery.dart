

import 'package:flutter/material.dart';
import 'package:helloworld/QRcode.dart';
import 'package:helloworld/Randomroom.dart';
import 'package:helloworld/hotvideo.dart';
import 'package:helloworld/livedemo.dart';
import 'package:helloworld/mobilecontacts.dart';
import 'package:helloworld/moments.dart';
import 'package:helloworld/neargroups.dart';
import 'package:helloworld/room.dart';
import 'package:helloworld/scan.dart';

class mylisttiles{
  mylisttiles();
  ListTile getlisttile(Icon icon1,String title){
    return ListTile(
      leading:icon1,
      trailing:Icon(Icons.arrow_forward_ios_outlined,size:20,color:Colors.black),
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w500)),
    );
  }
     
  }
  


mylisttiles object=new mylisttiles();
class Discovery extends StatefulWidget {


  
  @override
  _DiscoveryclassState createState() => _DiscoveryclassState();
}

class _DiscoveryclassState extends State<Discovery> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
       body: SingleChildScrollView(child:Column( children:[
         SizedBox(height:20),
     
              Container(width: MediaQuery.of(context).size.width,decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Row(children:[Text('Phiz.live',style:TextStyle(color:Colors.red,fontSize:30,fontWeight:FontWeight.w700)),
           SizedBox(width:MediaQuery.of(context).size.width/2),
           Icon(Icons.notifications_active,color:Colors.black),
           SizedBox(width:10),
                Icon(Icons.more_vert,color:Colors.black),

         ],),
              ),
         SizedBox(height:20),
             Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('Discovery',style:TextStyle(color:Colors.black,fontSize:30,fontWeight:FontWeight.w700)),width: MediaQuery.of(context).size.width,),
           SizedBox(height:20),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> moment()));
            });},
            child:object.getlisttile(Icon(Icons.image), 'Moments'))
        ), 
           SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> scanclass()));
            });},
            child:object.getlisttile(Icon(Icons.scanner_rounded), 'Scan'))
        ), 
           SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> neargroup()));
            });},
            child:object.getlisttile(Icon(Icons.place), 'Near the group of'))
        ), 
           SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> liveDemo()));
            });},
            child:object.getlisttile(Icon(Icons.desktop_mac), 'A live demo'))
        ), 
           SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> hvideo()));
            });},
            child:object.getlisttile(Icon(Icons.fireplace_rounded), 'Hot video'))
        ), 
           SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> mobileaccount()));
            });},
            child:object.getlisttile(Icon(Icons.person), 'Mobile Contacts'))
        ), 
           SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> randomroom()));
            });},
            child:object.getlisttile(Icon(Icons.group_rounded), 'Random room'))
        ), 
           SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> room()));
            });},
            child:object.getlisttile(Icon(Icons.meeting_room_outlined), 'Room'))
        ), 
           SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> setting()));
            });},
            child:object.getlisttile(Icon(Icons.games_rounded), 'Games'))
        ), 
   SizedBox(height:10),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> setting()));
            });},
            child:object.getlisttile(Icon(Icons.local_pizza_rounded), 'Miniprogram'))
        ), 
       ]))
     );
  }
}