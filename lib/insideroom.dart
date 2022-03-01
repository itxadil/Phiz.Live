import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/chat2.dart';
import 'package:helloworld/roominfo.dart';
import 'package:helloworld/settings.dart';


class rr1class extends StatefulWidget {
  @override
  _rr1classState createState() => _rr1classState();
}

class _rr1classState extends State<rr1class> {
   var _formKey = GlobalKey<FormState>();
  String comment = " ";
  TextEditingController commentedit= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:20),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Boxing Room',style:TextStyle( fontWeight:FontWeight.w500,fontSize: 20,color:Colors.black)),trailing: Icon(Icons.search,color:Colors.black),),
        SizedBox(height: 20,),
        Container(width:MediaQuery.of(context).size.width,height:734,decoration: BoxDecoration(color:Colors.black),
        child:Stack(children: [
          ClipRRect(child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr9snCg-TorRG-YvrcW-hyqBqsjEhNXIqk7A&usqp=CAU'),width: MediaQuery.of(context).size.width,height:734,fit: BoxFit.fill,)),
          Positioned(left:20,top: 20,child:Container(width:360,height:35,child:Row(children: [
            CircleAvatar(radius:20,backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU')),
            SizedBox(width:20),
             Text('@taim8r',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
             SizedBox(width:130),
              CircleAvatar(radius:15,backgroundColor: Color(0xffC4C4C4),child: Icon(Icons.cameraswitch_rounded,color:Colors.white)),
              SizedBox(width:10),
             CircleAvatar(radius:15,backgroundColor: Color(0xffC4C4C4),child: Icon(Icons.swipe_outlined,color:Colors.white)),
              SizedBox(width:10),
              CircleAvatar(radius:15,backgroundColor: Color(0xffC4C4C4),child: Icon(Icons.close,color:Colors.white),)
          ],))),
          //SizedBox(height:15),
           Positioned(left:70,top:100,child:Column(children: [
             Text('Invite Anyone With a Link',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25),),
             SizedBox(height:10),
             Text('We will notify you when anyone joins',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 12),),
           ],)),
               Positioned(left:30,bottom:30,child:   RawMaterialButton(child:Container(
            width:328,
            height:48,
            alignment: Alignment.center,
           
            //padding: EdgeInsets.only(top:15),
            decoration: BoxDecoration(color:Colors.red
            , borderRadius: BorderRadius.circular(10)
          ),
          child: Text('Share Link',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
          
                
          
               ),onPressed: (){
                 setState(() {
                   setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>roominfoclass()));
                   });
                 });
               },)),
 //Positioned(bottom: 30,left:280,child:CircleAvatar(radius:15,backgroundColor:Color(0xffC4C4C4),child: Icon(Icons.send,color: Colors.white,),)),
//Positioned(bottom: 30,left:330,child:CircleAvatar(radius:15,backgroundColor:Color(0xffC4C4C4),child: Icon(Icons.thumb_up_sharp,color: Colors.white,),)),
 Positioned(left: 30,bottom:85,child:CircleAvatar(radius:30,backgroundColor:  Color(0xffE5E5E5),child: Icon(Icons.group,color: Colors.white,),)),
  Positioned(left:100,bottom:100,child: Text('People with the link',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w400),)),
 
Positioned(left:100,bottom: 115,child: Text('Who can Join?',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),)),
  //ListTile(subtitle: Text('People with the link',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w400),),title:Text('Who can Join?',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),), leading:CircleAvatar(radius:30,backgroundColor:  Color(0xffE5E5E5),child: Icon(Icons.group,color: Colors.white,),))              
             //SizedBox(width:100),
             //CircleAvatar(radius:15,backgroundColor:Color(0xffC4C4C4),child: Icon(Icons.send,color: Colors.white,),),
             //SizedBox(width:20),
             //CircleAvatar(radius:15,backgroundColor:Color(0xffC4C4C4),child: Icon(Icons.thumb_up_sharp,color:Colors.white),),
          //ListTile(trailing:CircleAvatar(radius:15,backgroundColor: Color(0xffC4C4C4),child: Icon(Icons.close,color:Colors.white),),title: Text('@taim8r',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),leading:CircleAvatar(radius:20,backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'))),
       // CircleAvatar(radius:15,backgroundColor: Color(0xffC4C4C4),child: Icon(Icons.swipe_outlined,color:Colors.white)),
        ],)
        ),
      ]))
    );
  }
}