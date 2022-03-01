import 'package:flutter/material.dart';
import 'package:helloworld/chatnewfriend.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:helloworld/settings.dart';

class mylisttiles{
  mylisttiles();

        ListTile getlisttileavatar(CircleAvatar img,String title){
    return ListTile(
      leading:img,
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w500)),
    );
  }
       

}


mylisttiles object=new mylisttiles();
class room1class extends StatefulWidget {


  @override
  _room1classState createState() => _room1classState();
}

class _room1classState extends State<room1class> {
    bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
          backgroundColor: Color(0xffE5E5E5),
       body:SingleChildScrollView(child:Column(children: [
             SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Boxing Room',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height:20),
       Container(width:328,height:56,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),child:ListTile(title: Text('Lock Room',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),trailing: Switch(activeColor: Colors.red,inactiveThumbColor: Color(0xff4F5E7B),value: isSwitched,onChanged: (value){
                 setState(() {
                   isSwitched=value;
                 });
       }))),
       SizedBox(height: 10,),
       RawMaterialButton(child:Container(width:328,height:115,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child: Column(children: [
         ListTile(trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),title:Text('Share Room Link',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w500),)),
         Divider(height: 0.1,indent: 20,endIndent: 20,color: Colors.black,),
         ListTile(trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),title:Text('End Room',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w500),))
         ],)),onPressed: (){
         setState(() {
           
         });
       },),
      SizedBox(height: 10,),
       Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),width:MediaQuery.of(context).size.width,height: 25,margin: EdgeInsets.only(left:16),
        child:Text('In This Room',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600)
        )),
        SizedBox(height:15),
              Container(
            width:328,
            height:60,
      
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKGJe39Tf2ENyMZyQohApTqjgw19Rwirukaw&usqp=CAU'),), 'Aalia Pittman'))),
           SizedBox(height:20),
         Container(
            width:328,
            height:60,
          
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyaFCxfkjXib6EO2q2fYYfGrJFLd6b1u30-w&usqp=CAU'),), 'Brendan Singleton'))),
           SizedBox(height:20),
         Container(
            width:328,
            height:60,
     
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYHlKh8_Yzq_bqvrsGepPY03Gb8Chuezvrgw&usqp=CAU'),), 'Amiha Escobar'))),
           SizedBox(height:20),
         Container(
            width:328,
            height:60,
       
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDC1oOl0vKcRzZLBS1BNpri9eSfEyarLyMmA&usqp=CAU'),), 'Holly Park'))),
           SizedBox(height:20),
         Container(
            width:328,
            height:60,
    
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiIoreiBS7DdBHKpNDbgPEV_gnb-e3Z9lGTA&usqp=CAU'),), 'Leon Murphy'))),
           SizedBox(height:20),
         Container(
            width:328,
            height:60,
     
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy4OZbcHGSrMYqXsZAJS9bmZOwG5u0ayS1Mg&usqp=CAU'),), 'Hammad Keith'))),
       ],))
     );
  }
}