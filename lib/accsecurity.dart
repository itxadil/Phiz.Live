import 'package:flutter/material.dart';
class security extends StatefulWidget {
  @override
  _securityState createState() => _securityState();
}


class _securityState extends State<security> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),trailing: Icon(Icons.more_vert,color:Colors.black),title: Text('Cards',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),),
        //SizedBox(height: 25,),
         SizedBox(height:20),
        Container(width:328,height:115,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
        child:Column(children: [
        
          ListTile(title:Text('ID No.',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Wrap(spacing: 12,children:[Text('100000004',style:TextStyle(color:Colors.black,fontSize: 8)),Icon(Icons.arrow_forward_ios,color:Colors.black),
          ])),
          Divider(height: 0.1,indent: 20,endIndent: 20,color: Colors.black,),
          ListTile(title:Text('Telephone',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Wrap(spacing: 12,children:[Text('1356765456765',style:TextStyle(color:Colors.black,fontSize: 8)),Icon(Icons.arrow_forward_ios,color:Colors.black),
          ])),
        ],)
        ),
        SizedBox(height:10),
        Container(padding: EdgeInsets.only(top:5),width:328,height:56,decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child: ListTile(
          title: Text('Password',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize:14)),trailing:Icon(Icons.arrow_forward_ios,color: Colors.black)),
        ),
      ]))
    );
  }
}