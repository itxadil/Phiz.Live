import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/settings.dart';


class liveDemo1 extends StatefulWidget {
  @override
  _liveDemo1State createState() => _liveDemo1State();
}

class _liveDemo1State extends State<liveDemo1> {
   var _formKey = GlobalKey<FormState>();
  String comment = " ";
  TextEditingController commentedit= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:20),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Live demo',style:TextStyle( fontWeight:FontWeight.w500,fontSize: 14,color:Colors.black)),trailing: Icon(Icons.search,color:Colors.black),),
        SizedBox(height: 20,),
        Container(width:MediaQuery.of(context).size.width,height:734,decoration: BoxDecoration(color:Colors.black),
        child:Stack(children: [
          ClipRRect(child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr9snCg-TorRG-YvrcW-hyqBqsjEhNXIqk7A&usqp=CAU'),width: MediaQuery.of(context).size.width,height:734,fit: BoxFit.fill,)),
          Positioned(left:20,top: 20,child:Container(width:350,height:35,child:Row(children: [
            CircleAvatar(radius:20,backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU')),
            SizedBox(width:20),
             Text('@taim8r',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
             SizedBox(width:150),
             CircleAvatar(radius:15,backgroundColor: Color(0xffC4C4C4),child: Icon(Icons.swipe_outlined,color:Colors.white)),
              SizedBox(width:10),
              CircleAvatar(radius:15,backgroundColor: Color(0xffC4C4C4),child: Icon(Icons.close,color:Colors.white),)
          ],))),
          //SizedBox(height:15),
           Positioned(left: 15,top:60,child:Row(children: [
             Container(padding: EdgeInsets.only(left:3),margin: EdgeInsets.only(left:10),width:32,height:18,decoration: BoxDecoration(color: Colors.red),child: Text('Live',style: TextStyle(color:Colors.white
             ,fontSize: 15,fontWeight: FontWeight.w400)),),
             SizedBox(width:5),
              Container(width:67,height:20,padding: EdgeInsets.only(left:3),decoration: BoxDecoration(color: Color(0xC4C4C4)),child: Row(children: [Icon(Icons.remove_red_eye_outlined,color: Colors.white),Text('16.3k',style:TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.w500))],)
             ),
           ],)),
               Positioned(bottom:30,child:   Container(
            width:MediaQuery.of(context).size.width/1.9,
            height:35,
            margin: EdgeInsets.only(left:15,right:15),
            //padding: EdgeInsets.only(top:15),
            decoration: BoxDecoration(color:Colors.white
            , borderRadius: BorderRadius.circular(20)
          ),
          child:Form(child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                  
                        
                        fillColor: Colors.white,
                        filled: true,
                        
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.black,width:5 )),
                  
                      hintText: "Comment",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:13)),),)),
                
          
 ),
 Positioned(bottom: 30,left:280,child:CircleAvatar(radius:15,backgroundColor:Color(0xffC4C4C4),child: Icon(Icons.send,color: Colors.white,),)),
Positioned(bottom: 30,left:330,child:CircleAvatar(radius:15,backgroundColor:Color(0xffC4C4C4),child: Icon(Icons.thumb_up_sharp,color: Colors.white,),)),
 Positioned(left: 15,bottom: 70,child:Container(width:MediaQuery.of(context).size.width/1.9,
            height:35,decoration: BoxDecoration(color: Colors.white38,borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Text('annur',style: TextStyle(color:Colors.white10,fontSize: 8,fontWeight: FontWeight.w400),),
              Text('I will watch till the end!',style: TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.w600),),
            ],)
            )),
               Positioned(left: 15,bottom: 110,child:Container(width:MediaQuery.of(context).size.width/1.9,
            height:35,decoration: BoxDecoration(color: Colors.white38,borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Text('Hamza',style: TextStyle(color:Colors.white10,fontSize: 8,fontWeight: FontWeight.w400),),
              Text('Fabuloues Bro!! great!',style: TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.w600),),
            ],)
            )),   
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