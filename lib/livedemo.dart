import 'package:flutter/material.dart';
import 'package:helloworld/livedemo1.dart';
import 'package:helloworld/settings.dart';


class liveDemo extends StatefulWidget {
  @override
  _liveDemoState createState() => _liveDemoState();
}

class _liveDemoState extends State<liveDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body:ListView(children: [
        SizedBox(height:20),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Live demo',style:TextStyle( fontWeight:FontWeight.w500,fontSize: 14,color:Colors.black)),trailing: Icon(Icons.search,color:Colors.black),),
        SizedBox(height: 20,),
        Container(margin: EdgeInsets.only(left:16),width:MediaQuery.of(context).size.width,height:21,decoration: BoxDecoration(color:Color(0xffE5E5E5)),
        child: Row(children: [
         Text('Live',style:TextStyle( fontWeight:FontWeight.w500,fontSize: 20,color:Color(0xffED332E))),
         SizedBox(width: 17,),
         Text('Nearby',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 15,color:Color(0xff979797))),
          SizedBox(width: 17,),
          Text('Face',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 15,color:Color(0xff979797))),
        SizedBox(width: 17,),
          Text('Shopping',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 15,color:Color(0xff979797))),
          SizedBox(width: 17,),
          Text('Skill',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 15,color:Color(0xff979797))),
          SizedBox(width: 15,),
          Text('Gaming',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 15,color:Color(0xff979797))),
        ],), 
 
         
    
        ),
               SizedBox(height:20),
        Row(children: [
           SizedBox(width:16),
          Expanded(child:Stack(children: [
            RawMaterialButton(child:ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn3gS7DNP8KKHoGNUcGBMPfk1WEEwtFzSVYh6cQ4p04N6JOWWJ_zXfkxEE4YtlEbsCZec&usqp=CAU'),width: 170,height: 290,fit: BoxFit.fill,),
   
            ),onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>liveDemo1()));
              });
            },),
                    Positioned(top: 248,left:3,child: CircleAvatar(radius:20,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),),),
                  Positioned(top: 265,left:95,child: Row(children: [
                    Icon(Icons.star_border_outlined,color: Colors.red),
                    SizedBox(width:1.5),
                    Text('100K+',style:TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w600))
                  ],))
          ])),

          Expanded(child:Stack(children: [
            RawMaterialButton(child:ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ2q0XEjnR_7kPwcueVHH6ndpo9I86AyclUw&usqp=CAU'),width: 170,height: 290,fit: BoxFit.fill,),
   
            ),onPressed: (){
              setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>liveDemo1()));
              });
            },),
                    Positioned(top: 248,left: 3,child: CircleAvatar(radius:20,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),),),
                  Positioned(top: 265,left:95,child: Row(children: [
                    Icon(Icons.star_border_outlined,color: Colors.red),
                    SizedBox(width:1.5),
                    Text('100K+',style:TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w600))
                  ],))
          ])),

        ],),

         SizedBox(height:20),
        Row(children: [
           SizedBox(width:16),
          Expanded(child:Stack(children: [
            RawMaterialButton(child:ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-a-wSg_1YpP3UesH02TWwh1NJPrpZscBMUJADioZCRAUNXEegQ08EDndtkaTlunRKoW8&usqp=CAU'),width: 170,height: 290,fit: BoxFit.fill,),
   
            ),onPressed: (){
              setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>liveDemo1()));
              });
            },),
                    Positioned(top: 248,left:3,child: CircleAvatar(radius:20,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),),),
                  Positioned(top: 265,left:95,child: Row(children: [
                    Icon(Icons.star_border_outlined,color: Colors.red),
                    SizedBox(width:1.5),
                    Text('100K+',style:TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w600))
                  ],))
          ])),

          Expanded(child:Stack(children: [
            RawMaterialButton(child:ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr9snCg-TorRG-YvrcW-hyqBqsjEhNXIqk7A&usqp=CAU'),width: 170,height: 290,fit: BoxFit.fill,),
   
            ),onPressed: (){
              setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>liveDemo1()));
              });
            },),
                    Positioned(top: 248,left: 3,child: CircleAvatar(radius:20,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),),),
                  Positioned(top: 265,left:98,child: Row(children: [
                    Icon(Icons.star_border_outlined,color: Colors.red),
                    SizedBox(width:1.5),
                    Text('100K+',style:TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w600))
                  ],))
          ])),

        ],),
        SizedBox(height:20),

          Row(children: [
           SizedBox(width:16),
          Expanded(child:Stack(children: [
            RawMaterialButton(child:ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjoesJM7Oo6vZPdvg-5ik5_NN_GqoPsXR304H1ROLWYxTzSbOHiHTULj7Twbd6yS4Grqs&usqp=CAU'),width: 170,height: 290,fit: BoxFit.fill,),
   
            ),onPressed: (){
              setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>liveDemo1()));
              });
            },),
                    Positioned(top: 248,left:3,child: CircleAvatar(radius:20,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),),),
                  Positioned(top: 265,left:95,child: Row(children: [
                    Icon(Icons.star_border_outlined,color: Colors.red),
                    SizedBox(width:1.5),
                    Text('100K+',style:TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w600))
                  ],))
          ])),

          Expanded(child:Stack(children: [
            RawMaterialButton(child:ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image(image: AssetImage('assets/images/icon9.jpg'),width: 170,height: 290,fit: BoxFit.fill,),
   
            ),onPressed: (){
              setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>liveDemo1()));
              });
            },),
                    Positioned(top: 248,left: 3,child: CircleAvatar(radius:20,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),),),
                  Positioned(top: 265,left:98,child: Row(children: [
                    Icon(Icons.star_border_outlined,color: Colors.red),
                    SizedBox(width:1.5),
                    Text('100K+',style:TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w600))
                  ],))
          ])),

        ],)
   


      ],)
    );
  }
}