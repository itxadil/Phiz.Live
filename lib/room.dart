import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:helloworld/room1.dart';
import 'package:helloworld/insideroom.dart';
class room extends StatefulWidget {


  
  @override
  _roomState createState() => _roomState();
}

class _roomState extends State<room> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
       body:SingleChildScrollView(child:Column(
         children: [
            SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Rooms',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height:20),
        RawMaterialButton(child:Container(decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),alignment: Alignment.center,width:MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),
        child:Text('Create New Room',style: TextStyle(color:Colors.white,fontSize:14,fontWeight: FontWeight.w600)
        )),onPressed: (){
          setState(() {
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
          });
        },),
        SizedBox(height:15),
        Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),width:MediaQuery.of(context).size.width,height: 25,margin: EdgeInsets.only(left:16),
        child:Text('Suggested Rooms',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600)
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>rr1class()));
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>room1class()));
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
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>rr1class()));
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>room1class()));
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
              Container(
               width:MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left:10,right:10),
               height:112,
                            padding:EdgeInsets.only(top:20,left:10),
               decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
               
               child: Stack(children: [
                 CircleAvatar(radius: 30,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1F7bK6QHWfWrVqR0nTQLTdcaWoAgAITbsmg6klf68UM3SnjaUwcDAR6_MdzS9twuI5k&usqp=CAU'),),
                 Positioned(left:80,child:Text('Boxing',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600),)),
                   Positioned(left:80,bottom:50,child:Text('Martin Hoffman',style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.w400),)),
                  Positioned(bottom:45,left:230,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1F7bK6QHWfWrVqR0nTQLTdcaWoAgAITbsmg6klf68UM3SnjaUwcDAR6_MdzS9twuI5k&usqp=CAU'),),),
                  Positioned(bottom:45,left:250,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1F7bK6QHWfWrVqR0nTQLTdcaWoAgAITbsmg6klf68UM3SnjaUwcDAR6_MdzS9twuI5k&usqp=CAU'),),),
                  Positioned(bottom:45,left:270,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1F7bK6QHWfWrVqR0nTQLTdcaWoAgAITbsmg6klf68UM3SnjaUwcDAR6_MdzS9twuI5k&usqp=CAU'),),),
                  Positioned(bottom:45,left:290,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1F7bK6QHWfWrVqR0nTQLTdcaWoAgAITbsmg6klf68UM3SnjaUwcDAR6_MdzS9twuI5k&usqp=CAU'),),),
                  Positioned(bottom:45,left:310,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1F7bK6QHWfWrVqR0nTQLTdcaWoAgAITbsmg6klf68UM3SnjaUwcDAR6_MdzS9twuI5k&usqp=CAU'),),),
                  Positioned(bottom:15,left:260,child:Container(padding:EdgeInsets.only(left:17,top:5),width:80,height:20,decoration:BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(10)),child: Text('Requested',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight:FontWeight.w400)),))
  
    ],)),
              SizedBox(height: 10),
             Container(
               width:MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left:10,right:10),
               height:112,
                            padding:EdgeInsets.only(top:20,left:10),
               decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
               
               child: Stack(children: [
                 CircleAvatar(radius: 30,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvx1Tzx9jvos92_ay93hFqa821tB4PW349hpBUHO9xOkkSESvoWlcrVuZS1EopNmqcNZ4&usqp=CAU'),),
                 Positioned(left:80,child:Text('Boxing',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600),)),
                   Positioned(left:80,bottom:50,child:Text('Erik Higgins',style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.w400),)),
                  Positioned(bottom:45,left:230,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvx1Tzx9jvos92_ay93hFqa821tB4PW349hpBUHO9xOkkSESvoWlcrVuZS1EopNmqcNZ4&usqp=CAU'),),),
                  Positioned(bottom:45,left:250,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvx1Tzx9jvos92_ay93hFqa821tB4PW349hpBUHO9xOkkSESvoWlcrVuZS1EopNmqcNZ4&usqp=CAU'),),),
                  Positioned(bottom:45,left:270,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvx1Tzx9jvos92_ay93hFqa821tB4PW349hpBUHO9xOkkSESvoWlcrVuZS1EopNmqcNZ4&usqp=CAU'),),),
                  Positioned(bottom:45,left:290,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvx1Tzx9jvos92_ay93hFqa821tB4PW349hpBUHO9xOkkSESvoWlcrVuZS1EopNmqcNZ4&usqp=CAU'),),),
                  Positioned(bottom:45,left:310,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvx1Tzx9jvos92_ay93hFqa821tB4PW349hpBUHO9xOkkSESvoWlcrVuZS1EopNmqcNZ4&usqp=CAU'),),),
                  Positioned(bottom:15,left:260,child:Container(padding:EdgeInsets.only(left:12,top:5),width:80,height:20,decoration:BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(10)),child: Text('Enter Room',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight:FontWeight.w400)),))
  
    ],)
               /*ListTile(leading: CircleAvatar(radius:30,backgroundImage: AssetImage('assets/images/3.jpg')),title:Text('Boxing',style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),subtitle:Text('Erik Higgins',style:TextStyle(color:Colors.black,fontSize: 10,fontWeight: FontWeight.w400)),
               trailing: Stack(children: [
                 CircleAvatar(radius: 15,backgroundImage: AssetImage('images/assets/5.jpg'),),
                 //Positioned(right:20,child:CircleAvatar(radius: 15,backgroundImage: AssetImage('images/assets/4.jpg'),), ),
                 //Positioned(right:40,child:CircleAvatar(radius: 15,backgroundImage: AssetImage('images/assets/4.jpg'),), ),
                //Positioned(right:80,child:CircleAvatar(radius: 15,backgroundImage: AssetImage('images/assets/4.jpg'),), ),
             Positioned(bottom:40,child:Container(width:90,height:24,decoration:BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),child: Text('Requested',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)))
//Positioned(right:100,child:CircleAvatar(radius: 15,backgroundImage: AssetImage('images/assets/4.jpg'),), ),
//Positioned(right:100,child:CircleAvatar(radius: 15,backgroundImage: AssetImage('images/assets/4.jpg'),), ),
               ],),
               )*/
             ),
          SizedBox(height: 10),
          Container(
               width:MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left:10,right:10),
               height:112,
                            padding:EdgeInsets.only(top:20,left:10),
               decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
               
               child: Stack(children: [
                 CircleAvatar(radius: 30,backgroundImage: NetworkImage('https://i.pinimg.com/originals/5d/62/0e/5d620e5b869b55c4be5e2911c85d668e.jpg'),),
                 Positioned(left:80,child:Text('Boxing',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600),)),
                   Positioned(left:80,bottom:50,child:Text('Randy Stewart',style: TextStyle(color:Colors.black,fontSize:10,fontWeight: FontWeight.w400),)),
                  Positioned(bottom:45,left:230,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://i.pinimg.com/originals/5d/62/0e/5d620e5b869b55c4be5e2911c85d668e.jpg'),),),
                  Positioned(bottom:45,left:250,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://i.pinimg.com/originals/5d/62/0e/5d620e5b869b55c4be5e2911c85d668e.jpg'),),),
                  Positioned(bottom:45,left:270,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://i.pinimg.com/originals/5d/62/0e/5d620e5b869b55c4be5e2911c85d668e.jpg'),),),
                  Positioned(bottom:45,left:290,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://i.pinimg.com/originals/5d/62/0e/5d620e5b869b55c4be5e2911c85d668e.jpg'),),),
                  Positioned(bottom:45,left:310,child:  CircleAvatar(radius: 15,backgroundImage: NetworkImage('https://i.pinimg.com/originals/5d/62/0e/5d620e5b869b55c4be5e2911c85d668e.jpg'),),),
                  Positioned(bottom:15,left:260,child:Container(padding:EdgeInsets.only(left:12,top:5),width:80,height:20,decoration:BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(10)),child: Text('Enter Room',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight:FontWeight.w400)),))
  
    ],))


         ],
       )
     ));
  }
}