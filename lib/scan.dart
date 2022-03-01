import 'package:flutter/material.dart';
class scanclass extends StatefulWidget {
  @override
  _scanclassState createState() => _scanclassState();
}


class _scanclassState extends State<scanclass> {
 //List datetime=[showDatePicker(initialDate: new DateTime.now(), firstDate: new DateTime(1900), lastDate: new DateTime(2100))];
  @override
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:24),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Scan',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black)),trailing:Icon(Icons.more_vert,color: Colors.black,)),
        SizedBox(height:20),
        Container(width:MediaQuery.of(context).size.width,height: 591,decoration: BoxDecoration(color:Color(0xff424242)),)
        ]))
      );
  }
}