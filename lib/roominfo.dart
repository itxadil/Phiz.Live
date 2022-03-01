import 'package:flutter/material.dart';
import 'package:helloworld/balance.dart';

class mylisttiles{
  mylisttiles();
  ListTile getlisttile(String title){
    return ListTile(
    
      trailing:Icon(Icons.arrow_forward_ios_outlined,size:20,color:Colors.black),
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:14,fontWeight: FontWeight.w400)),
    );
  }
     
  }
  


mylisttiles object=new mylisttiles();

class roominfoclass extends StatefulWidget {
  @override
  _roominfoclassState createState() => _roominfoclassState();
}

class _roominfoclassState extends State<roominfoclass> {
  var _formKey=GlobalKey<FormState>();
  TextEditingController msg=TextEditingController();
  String Msg=" ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
       body:SingleChildScrollView(child: Column(children: [
         SizedBox(height:30),
           ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Room Information',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 20,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height:20),
          Row(children: [
              SizedBox(width:15),
             CircleAvatar(radius:20,backgroundImage:AssetImage('assets/images/1.jpg')),
                Container(
            width:300,
            height:48,
          
            //margin: EdgeInsets.only(left:15,right:15),
     //padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,
            borderRadius: BorderRadius.circular(15)
         
          ),
          child: Form(child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                  
                        errorStyle: TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w300),
                        fillColor: Colors.black,
                        filled: true,
                        suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10.0),child:Icon(Icons.search,color:Colors.white)),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5 )),
                      hintText: "Search",hintStyle: TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize:14)),),),
          ),
          ]),
          SizedBox(height:20),
               Container(
            width:328,
            height:56,
            padding: EdgeInsets.only(left:30),
            alignment: Alignment.center,
            decoration: BoxDecoration(color:Colors.red,
            borderRadius: BorderRadius.circular(15)
            ),child: Row(children:[Text('phizlive.com/room/o9j_l1lCGhc',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 15,color:Colors.black)),SizedBox(width:30),
            Icon(Icons.attachment_sharp )
            ])),
            SizedBox(height: 10,),
            Container(width:328,height: 56,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
            child: object.getlisttile('Room Activity'),
            ),
            SizedBox(height:10),
                     Container(width:328,height: 56,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
            child: object.getlisttile('Who can discover and join'),
            ),
            SizedBox(height:10),
                     Container(width:328,height: 56,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
            child: object.getlisttile('Start Time'),
            ),
            SizedBox(height:10),

       ]))
    );
  }
}