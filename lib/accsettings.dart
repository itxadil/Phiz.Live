import 'package:flutter/material.dart';
import 'package:helloworld/accsecurity.dart';
import 'package:helloworld/login.dart';
import 'package:helloworld/notification.dart';
import 'package:helloworld/privacysett.dart';
import 'package:helloworld/settings.dart';


class mylist{
  mylist();
   ListTile getlisttileavatar(String title,){
    return ListTile(
      
      
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:14,fontWeight: FontWeight.w400)),
      trailing: Icon(Icons.arrow_forward_ios,color:Colors.black)
    );
  }

}

mylist listobj=new mylist();
class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height: 22,),
        Container(width: MediaQuery.of(context).size.width,decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Row(children:[Text('Phiz.live',style:TextStyle(color:Colors.red,fontSize:30,fontWeight:FontWeight.w700)),
           SizedBox(width:MediaQuery.of(context).size.width/2),
           Icon(Icons.notifications_active,color:Colors.black),
           SizedBox(width:10),
                Icon(Icons.more_vert,color:Colors.black),
        

        ])),
        SizedBox(height: 15),
      Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),width:MediaQuery.of(context).size.width,height: 25,margin: EdgeInsets.only(left:16),
        child:Text('Settings',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w600)
        )),

      SizedBox(height:13),
      RawMaterialButton(child:Container(width:328,height:56,margin:EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:listobj.getlisttileavatar('Account Security')),onPressed: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>security()));
        });
      },),
      SizedBox(height:10),
                 RawMaterialButton(child:Container(width:328,height:56,margin:EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:listobj.getlisttileavatar('Notifications')),onPressed: (){
                   setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>notifications()));
                   });
                 },),
           SizedBox(height:8),
                      RawMaterialButton(child:Container(width:328,height:56,margin:EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:listobj.getlisttileavatar('Privacy Settings')),onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>privacy()));
                        });
                      },),
                SizedBox(height:8),
                  Container(width:328,height:115,margin:EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:Column(children: [
                  listobj.getlisttileavatar('Language'),
                  Divider(color: Colors.black,height: 0.1,),
                  listobj.getlisttileavatar('Chat Text Size'),

                  ],)),
                  SizedBox(height:8),
                    Container(width:328,height:56,margin:EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:listobj.getlisttileavatar('Synchronization of historical messages')),
                  SizedBox(height:8),
                     Container(width:328,height:115,margin:EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:Column(children: [
                  listobj.getlisttileavatar('Clear Cache Data'),
                  Divider(color: Colors.black,height: 0.1,),
                  listobj.getlisttileavatar('Clear Chat History'),


                  ],)),
                  SizedBox(height: 8,),
                        Container(width:328,height:56,margin:EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:listobj.getlisttileavatar('About')),
                        SizedBox(height: 8,),
                RawMaterialButton(child:Container(width:328,height:56,margin:EdgeInsets.only(left:20,right:20),alignment: Alignment.center,decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(16)),child:Text('Switch Account',style:TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w400))),onPressed: (){
                  setState(() {
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=> setting()));
                  });
                },),
                SizedBox(height:13),
                 RawMaterialButton(child:Container(width:328,height:56,margin:EdgeInsets.only(left:20,right:20),alignment: Alignment.center,decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(16)),child:Text('Log Out',style:TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w400))),onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> mywidget()));
                  });
                },),
      ],))    
    );
  }
}