import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:helloworld/chat2.dart';
import 'package:helloworld/insideroom.dart';
import 'package:helloworld/randomroom2.dart';
import 'room1.dart';
class randomroom extends StatefulWidget {


  
  @override
  _randomroomState createState() => _randomroomState();
}

class _randomroomState extends State<randomroom> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
       body:SingleChildScrollView(child:Column(
         children: [
            SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Random Rooms',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height:20),
         Container(
            width:328,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           
            decoration: BoxDecoration(color:Colors.white
            , borderRadius: BorderRadius.circular(15)
          ),
          child: Form(child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                  
                        errorStyle: TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w300),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10.0),child:Icon(Icons.search,color:Colors.black)),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5 )),
                      hintText: "Search",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)),),),
          ),
        SizedBox(height:15),
        Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),width:MediaQuery.of(context).size.width,height: 25,margin: EdgeInsets.only(left:16),
        child:Text('Random Rooms',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600)
        )),
        SizedBox(height: 15,),
        Row(children: [
          RawMaterialButton(child:Container(margin: EdgeInsets.only(left:30),padding: EdgeInsets.only(top:10),width:160,height:200,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
          child: Column(children: [
            CircleAvatar(radius:30,backgroundImage: AssetImage('assets/images/1.jpg'),),
            SizedBox(height: 10,),
            Text('Boxing',style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
                      SizedBox(height: 10,),
            Text('Jone Doe',style:TextStyle(color:Colors.black,fontSize: 10,fontWeight: FontWeight.w400)),
            SizedBox(height:10),
            Container(padding: EdgeInsets.only(top:7,left:22),width:90,height:24,decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),
            child: Text('Join Room',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.w400)),
            ),

          ],)
          ),onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>room1class()));
            });
          },),
          SizedBox(width:10),
                RawMaterialButton(child:Container(padding: EdgeInsets.only(top:10),width:160,height:200,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
          child: Column(children: [
            CircleAvatar(radius:30,backgroundImage: AssetImage('assets/images/2.jpg'),),
            SizedBox(height: 10,),
            Text('Boxing',style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
                      SizedBox(height: 10,),
            Text('Floyed Howard',style:TextStyle(color:Colors.black,fontSize: 10,fontWeight: FontWeight.w400)),
            SizedBox(height:10),
            Container(padding: EdgeInsets.only(top:7,left:22),width:90,height:24,decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),
            child: Text('Join Room',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.w400)),
            ),
            
          ],)
          ),onPressed: (){
            setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>rr2()));
            });
          },)
        ],),
       SizedBox(height: 15),
          Container(
               width:MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left:16),
               decoration: BoxDecoration(color:Color(0xffE5E5E5) ),
               height:25,child:Text('Your Rooms',style:TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w600))),
             SizedBox(height: 15),
             RawMaterialButton(child:Container(
               width:MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left:10,right:10),
               height:112,
                            padding:EdgeInsets.only(top:20,left:10),
               decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
               child: Stack(children: [
                 CircleAvatar(radius: 30,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmCcO8KRA3NO0hePyRIge3X8SgqTyw4izxWjfe_oIkpjhU0A4IvqSInFH7upFyYCrAMMk&usqp=CAU'),),
                 Positioned(left:80,child:Text('Boxing',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600),)),
                   Positioned(left:80,bottom:50,child:Text('Martin Hoffman',style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.w400),)),
                  Positioned(bottom:45,left:230,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://mh-2-stockagency.panthermedia.net/media/previews/0007000000/07015000/07015075_high.jpg'),),),
                  Positioned(bottom:45,left:250,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq5Cge-nh6wW7AYSsS5o_MbtSdXILJvJ_sh4g9ytic4Yand2Mg2F9HuitDTtLD_mxv_r0&usqp=CAU'),),),
                  Positioned(bottom:45,left:270,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyG_c9L1yxkl3mEO6pIM5SK6LHdOyFFE0sdIzEfgWOLl-eNl9qKn7xBC2AlFl_57m4-2Y&usqp=CAU'),),),
                  Positioned(bottom:45,left:290,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGbng6xlmwk_lSYBuWRcwcacEgtl-eMXx5yZUoC-FLM0eGIohGoNTmacoeDQDTJUyUFS4&usqp=CAU'),),),
                  Positioned(bottom:45,left:310,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhDZKCZZTtNTY3XLdcYfghiX9X3FmO57rxQIOXkbpapVnXYIAqypLctiTUA2ACuMKFaec&usqp=CAU'),),),
                  Positioned(bottom:15,left:260,child:Container(padding:EdgeInsets.only(left:17,top:5),width:80,height:20,decoration:BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(10)),child: Text('Requested',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight:FontWeight.w400)),))
  
    ],)
             ),onPressed: (){
               setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>chat2class()));
               });
             },),
              SizedBox(height: 10),
             RawMaterialButton(child:Container(
               width:MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left:10,right:10),
               height:112,
                            padding:EdgeInsets.only(top:20,left:10),
               decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
               child: Stack(children: [
                 CircleAvatar(radius: 30,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn42BdKzp9g8VssL40z8AfVqQU_zXyKYQUCyKutucDmSUItOp2pbq9FcpZcm5hIkI5rfs&usqp=CAU'),),
                 Positioned(left:80,child:Text('Boxing',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600),)),
                   Positioned(left:80,bottom:50,child:Text('Erik Higgins',style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.w400),)),
                  Positioned(bottom:45,left:230,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYJntbOeedN20MGlTdgNJkS1qGiBBkeMHp9pvYS8jrZn0HqDY6x5zQr5qKv8hhMucQb6E&usqp=CAU'),),),
                  Positioned(bottom:45,left:250,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuY4uAYrxx3zpHYnio9eRp5CYEKVVokKJzLg1bHYs8T6vg5oERmw2OI2fSHhEamZ9H9qQ&usqp=CAU'),),),
                  Positioned(bottom:45,left:270,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuY4uAYrxx3zpHYnio9eRp5CYEKVVokKJzLg1bHYs8T6vg5oERmw2OI2fSHhEamZ9H9qQ&usqp=CAU'),),),
                  Positioned(bottom:45,left:290,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuY4uAYrxx3zpHYnio9eRp5CYEKVVokKJzLg1bHYs8T6vg5oERmw2OI2fSHhEamZ9H9qQ&usqp=CAU'),),),
                  Positioned(bottom:45,left:310,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuY4uAYrxx3zpHYnio9eRp5CYEKVVokKJzLg1bHYs8T6vg5oERmw2OI2fSHhEamZ9H9qQ&usqp=CAU'),),),
                  Positioned(bottom:15,left:260,child:Container(padding:EdgeInsets.only(left:12,top:5),width:80,height:20,decoration:BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(10)),child: Text('Enter Room',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight:FontWeight.w400)),))
  
    ],)
             ),onPressed: (){
               setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>chat2class()));
               });
             },),
          SizedBox(height: 10),
             RawMaterialButton(child:Container(
               width:MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left:10,right:10),
               height:112,
               padding:EdgeInsets.only(top:20,left:10),
               decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
               child: Stack(children: [
                 CircleAvatar(radius: 30,backgroundImage: NetworkImage('https://phantom-marca.unidadeditorial.es/212ce70746a7255a185a5356058a8774/resize/414/f/jpg/assets/multimedia/imagenes/2019/05/15/15579388347721.jpg'),),
                 Positioned(left:80,child:Text('Boxing',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600),)),
                   Positioned(left:80,bottom:50,child:Text('Randy Stewart',style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.w400),)),
                  Positioned(bottom:45,left:230,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFBOQqk_4w6KD5fWOVrDpy4Fr2AYHETMAliVc0OM-uo5Qt4f-r2I_ngszxF1c0a1Df7V4&usqp=CAU'),),),
                  Positioned(bottom:45,left:250,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFBOQqk_4w6KD5fWOVrDpy4Fr2AYHETMAliVc0OM-uo5Qt4f-r2I_ngszxF1c0a1Df7V4&usqp=CAU'),),),
                  Positioned(bottom:45,left:270,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFBOQqk_4w6KD5fWOVrDpy4Fr2AYHETMAliVc0OM-uo5Qt4f-r2I_ngszxF1c0a1Df7V4&usqp=CAU'),),),
                  Positioned(bottom:45,left:290,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFBOQqk_4w6KD5fWOVrDpy4Fr2AYHETMAliVc0OM-uo5Qt4f-r2I_ngszxF1c0a1Df7V4&usqp=CAU'),),),
                  Positioned(bottom:45,left:310,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFBOQqk_4w6KD5fWOVrDpy4Fr2AYHETMAliVc0OM-uo5Qt4f-r2I_ngszxF1c0a1Df7V4&usqp=CAU'),),),
                  Positioned(bottom:15,left:260,child:Container(padding:EdgeInsets.only(left:12,top:5),width:80,height:20,decoration:BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(10)),child: Text('Enter Room',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight:FontWeight.w400)),))
  
    ],)),onPressed: (){
      setState(() {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>chat2class()));
      });
    },)


         ],
       )
     ));
  }
}