import 'package:flutter/material.dart';

class chat2class extends StatefulWidget {
  @override
  _chat2classState createState() => _chat2classState();
}

class _chat2classState extends State<chat2class> {
  var _formKey=GlobalKey<FormState>();
  TextEditingController msg=TextEditingController();
  String Msg=" ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
       body:SingleChildScrollView(child: Column(children: [
         SizedBox(height:50),
          Row(children: [
            Icon(Icons.arrow_back,color:Colors.black),
            SizedBox(width:10),
             CircleAvatar(radius:20,backgroundImage:AssetImage('assets/images/1.jpg')),
            
              Container(
               width:300,
               height:48,
               padding:EdgeInsets.only(left:10),
               decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(6)),
               child: Row(children: [  
                 Text('Boxing Room',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w400),),
                 SizedBox(width:90),
                 Icon(Icons.search,color:Colors.white),
                 SizedBox(width:20),
                 
                 Icon(Icons.more_vert,color:Colors.white)

               ])),
          ]),
               SizedBox(height:20),
              Container(
               width:262,
               height:127,
               padding:EdgeInsets.only(left:10,top:10,right:10),
               margin:EdgeInsets.only(left:50),
               decoration: BoxDecoration(color:Colors.red),
               child: Text('Hello guys we have discussed about post corona vacation plan and our decision is going to Bali.There is going to be a great part after this corona ends!.Here are some pics about the destination',style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
               ),
                 SizedBox(height:20),
              Container(
               width:200,
               height:96,
               padding:EdgeInsets.only(left:10,top:10,right:10),
               margin:EdgeInsets.only(left:10,right:150),
               decoration: BoxDecoration(color:Colors.white),
               child: Text("Hey guys that's very nice place, you made a very good decision. Can't wait to go on vacations",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
               ),
                SizedBox(height:10),
                  Container(
               width:200,
               height:60,
               padding:EdgeInsets.only(left:10,top:10,right:10),
               margin:EdgeInsets.only(left:10,right:150),
               decoration: BoxDecoration(color:Colors.white),
               child: Text("Yes, that was pretty much special for you",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
               ),
             SizedBox(height:335),
             Container(height:60,width:MediaQuery.of(context).size.width,decoration: BoxDecoration(color:Color(0xffE5E5E5)),child:Stack(children:[
               RawMaterialButton(child:CircleAvatar(radius:30,backgroundColor: Colors.black,child:Icon(Icons.add,color:Colors.white)),onPressed: (){
                 setState(() {
                   showModalBottomSheet(context: context, builder: (context){
                       return Container(padding: EdgeInsets.only(top:30,left:10),color:Color(0xffE5E5E5),width:328,height: 110,child:Column(children: [
                         Row(children: [
                           Icon(Icons.document_scanner_outlined,color:Colors.white,size: 40,),
                           SizedBox(width:18),
                             Icon(Icons.camera,color:Colors.white,size:40),
                           SizedBox(width:18),
                             Icon(Icons.g_translate_outlined,color:Colors.white,size:40),
                           SizedBox(width:18),
                             Icon(Icons.person,color:Colors.white,size: 40,),
                           SizedBox(width:18),
                             Icon(Icons.meeting_room_outlined,color:Colors.white,size:40),
                           SizedBox(width:18),
                             Icon(Icons.place,color:Colors.white,size:40),
                           SizedBox(width:18),
                         ],),
                         Row(children: [
                           Text('Document',style: TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                                 SizedBox(width:3),
                            Text('Camera',style: TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                                 SizedBox(width:3),
                            Text('Gallery',style: TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                                 SizedBox(width:3),
                            Text('Contacts',style: TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                                 SizedBox(width:7),
                            Text('Room',style: TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                              SizedBox(width:10),
                            Text('Location',style: TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                          
                         ],),
                         SizedBox(height:15),
                         
                       ],));
                   });
                 });
               },),
              
             Positioned(left:70,child:Container(
               width:210,
               height:55,
              // margin:EdgeInsets.only(right:60),
               decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(15)),
               child:Form(
                 key:_formKey,
                 child:TextFormField(
                   keyboardType: TextInputType.text,
                   validator: (String a){
                     if(a.length<0){
                       return "Enter message to send";
                     }
                   },
                   decoration: InputDecoration(
                     fillColor: Colors.white,
                     filled:true,
                     hintText: 'Write a message',
                     hintStyle: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w400),
                     errorStyle: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5))
                   )
                 )
               ),

             )),
             //SizedBox(width:3),
             Positioned(left:260,child:RawMaterialButton(child:CircleAvatar(radius: 23,backgroundColor: Colors.red,child:Icon(Icons.send,color:Colors.white)),onPressed: (){
               setState(() {
                 
               });
             },)),
            
                SizedBox(width:3),
             Positioned(left:310,child:RawMaterialButton(child:CircleAvatar(radius: 23,backgroundColor: Colors.red,child:Icon(Icons.voice_chat,color:Colors.white)),onPressed: (){
               setState(() {
                 
               });
             },))
             ])),
         
       ],))
    );
  }
}