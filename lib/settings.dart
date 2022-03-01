import 'package:flutter/material.dart';
import 'package:helloworld/accsettings.dart';
import 'package:helloworld/balance.dart';
import 'package:helloworld/fav.dart';
import 'package:helloworld/notes.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class containers {
  Icon icon;
  Text text;
  int width;
  int height;

  containers();

  ListTile getlist(String name) {
    return ListTile(
      leading: Icon(Icons.image, color: Colors.pink),
      title: Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
    );
  }

  /*Container getcont(String name) {
    return Container(
        width: 400,
        height: 30,
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: getlist(name));
  }*/
}

containers obj = new containers();

class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(child:Column(children: [
      SizedBox(height: 30),
      Container(
          width: 450,
          height: 40,
          //margin: EdgeInsets.only(bottom: 100),
          decoration: BoxDecoration(
              //color: Colors.white,
              ),
          child: Row(children: [
            SizedBox(width: 10),
            Text("Phiz.live", style: TextStyle(color: Colors.red[600], fontSize: 30, fontWeight: FontWeight.w500)),
            SizedBox(width: 200),
            Icon(Icons.notifications_active, size: 30),
            SizedBox(width: 10),
            Icon(Icons.more_vert, size: 30),
          ])),
      SizedBox(height: 10),
      CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),
      ),
      SizedBox(height: 10),
      Text("Taimour Sohail", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40, color: Colors.black)),
      //SizedBox(height: 10),
      Text("@taim8r", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30, color: Colors.black)),
      SizedBox(height: 10),

      Container( margin:EdgeInsets.only(left:15,right:15),  width: MediaQuery.of(context).size.width, height: 60, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0)), child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> balanceclass()));
            });},
            child:obj.getlist('Balance'))),
      SizedBox(
        height: 10,
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2.9,
          margin:EdgeInsets.only(left:15,right:15),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
          child: Column(children: [
            RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> note()));
            });},
            child:obj.getlist('Note')),
            SizedBox(height: 5),
            Divider(color: Colors.black, height: 10, indent: 10, endIndent: 20, thickness: 0),
            RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> favclass()));
            });},
            child:obj.getlist('Favourite')),
            SizedBox(height: 5),
            Divider(color: Colors.black, height: 10, indent: 10, endIndent: 20, thickness: 0),
            RawMaterialButton(
            onPressed: (){ setState(() {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> setting()));
            });},
            child:obj.getlist('Feedback')),
            SizedBox(height: 5),
            Divider(color: Colors.black, height: 10, indent: 10, endIndent: 20, thickness: 0),
            RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> settings()));
            });},
            child:obj.getlist('Settings')),
            SizedBox(height: 5),
            //Divider(color: Colors.black, height: 10, indent: 10, endIndent: 20, thickness: 0),
          ])),
      //obj.getcont('Note'),
      //obj.getlist('Favourite')
      //obj.getcont('Favourite'),
      //obj.getcont('Feedback', 60),
      //obj.getcont('Setting', 50),
    ])));
  }
}
