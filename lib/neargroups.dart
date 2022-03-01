import 'package:flutter/material.dart';
import 'package:helloworld/NewMedia.dart';


class mylist{
  mylist();
   ListTile getlisttileavatar(CircleAvatar img,String title,String sub){
    return ListTile(
      
      leading:img,
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:14,fontWeight: FontWeight.w400)),
      trailing: Icon(Icons.check_circle,color:Colors.black),
      subtitle: Text(sub,style:TextStyle(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w400)),
    );
  }

}

mylist listobj=new mylist();
class neargroup extends StatefulWidget {
  @override
  _neargroupState createState() => _neargroupState();
}

class _neargroupState extends State<neargroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
      body:ListView(children: [
        SizedBox(height:20),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Groups',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height: 20,),
     
          RawMaterialButton(child:Container(margin: EdgeInsets.only(left:16,right:16),padding:EdgeInsets.only(bottom:10),height: 60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
          child:listobj
          .getlisttileavatar(CircleAvatar(radius:25,backgroundColor: Colors.red,), 'Group 1','22 Kms')
          ),onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>newmedia()));
            });
          },),
          SizedBox(height:13),
                RawMaterialButton(child:Container(padding:EdgeInsets.only(bottom:10),margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
          child:ListTile(
      
      leading:CircleAvatar(radius:25,backgroundColor: Colors.red,),
      title:Text('Group 2',style:TextStyle(color:Colors.black,fontSize:14,fontWeight: FontWeight.w400)),
  
      subtitle: Text('12 Kms',style:TextStyle(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w400)),
    )
          ),onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>newmedia()));
            });
          },),
      
    


      ])
    );
  }
}