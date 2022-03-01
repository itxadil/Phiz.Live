import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:helloworld/QRcode.dart';
import 'package:helloworld/groupmanage.dart';
import 'package:helloworld/livedemo1.dart';
import 'package:helloworld/notes.dart';
class listtitles{
  listtitles();
  ListTile getlist(Icon icon,String name){
    return ListTile(leading: Text(name,style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),trailing: icon,);
  }
   ListTile getlistforswitch(Switch s,String name){
    return ListTile(leading: Text(name,style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),trailing: s,);
  }
}
listtitles object=new listtitles();
class groupinfo extends StatefulWidget {


  @override
  _groupinfoState createState() => _groupinfoState();
}

class _groupinfoState extends State<groupinfo> {
bool isSwitched1= false;    
bool isSwitched2 = false;   
bool isSwitched3 = false;   
bool isSwitched4 = false;   
bool isSwitched5 = false;   
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body:ListView(children: [
          SizedBox(height:20),
          ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Group Info',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
               SizedBox(height:20),
               Container(margin: EdgeInsets.only(left:16),width:MediaQuery.of(context).size.width,height:60,decoration: BoxDecoration(color:Color(0xffE5E5E5)),
               child:Stack(
                 children:[
                   Text('Group Members',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight:FontWeight.w600),),
                   //SizedBox(width: 50,),
                   Positioned(left:240,bottom:20,child:CircleAvatar(radius:20,backgroundImage: NetworkImage('https://wl-brightside.cf.tsp.li/resize/728x/jpg/fa3/d80/f355155f96a15cb982969b3a39.jpg'),)),
                     Positioned(left:260,bottom:20,child:CircleAvatar(radius:20,backgroundImage: NetworkImage('https://wl-brightside.cf.tsp.li/resize/728x/jpg/fa3/d80/f355155f96a15cb982969b3a39.jpg'),)),
                       Positioned(left:280,bottom:20,child:CircleAvatar(radius:20,backgroundImage: NetworkImage('https://wl-brightside.cf.tsp.li/resize/728x/jpg/fa3/d80/f355155f96a15cb982969b3a39.jpg'),)),
                         Positioned(left:300,bottom:20,child:CircleAvatar(radius:20,backgroundImage: NetworkImage('https://wl-brightside.cf.tsp.li/resize/728x/jpg/fa3/d80/f355155f96a15cb982969b3a39.jpg'),)),
                           Positioned(left:320,bottom:20,child:CircleAvatar(radius:20,backgroundImage: NetworkImage('https://wl-brightside.cf.tsp.li/resize/728x/jpg/fa3/d80/f355155f96a15cb982969b3a39.jpg'),)),

                 ]
               )

               ),
               SizedBox(height:20),
               RawMaterialButton(child:Container(width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Group Notice') ,),onPressed: (){
                 setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>note()));
                 });
               },),
               SizedBox(height:10),
            Container(width: MediaQuery.of(context).size.width,height: 285,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:Column(children:[
                  RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Group Name'),onPressed: (){
                    setState(() {
                      
                    });
                  },) ,
                  Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                   RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Change Group Photo'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                   Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                   RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Group Description'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                   Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                   RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Group QR Code'),onPressed: (){
                     setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>QR()));
                       
                     });
                   },) ,
                   Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                   RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Change Alias'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                  ])),
                  SizedBox(height:10),
                  RawMaterialButton(child:Container(width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Group Shared Files') ,),onPressed: (){
                 setState(() {
                   
                 });
               },),
               SizedBox(height:10),
               Container(width: MediaQuery.of(context).size.width,height: 230,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:Column(children:[
                   RawMaterialButton(child:object.getlistforswitch(   Switch(activeColor: Colors.red,inactiveThumbColor: Color(0xff4F5E7B),value: isSwitched1,onChanged: (value){
                 setState(() {
                   isSwitched1=value;
                 });
               },), 'Sticky on Top'),onPressed: (){
                 setState(() {
                   
                 });
               },),
                 Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                    RawMaterialButton(child:object.getlistforswitch(   Switch(activeColor: Colors.red,inactiveThumbColor: Color(0xff4F5E7B),value: isSwitched2,onChanged: (value){
                 setState(() {
                   isSwitched2=value;
                 });
               },), 'Mute Notifications'),onPressed: (){
                    setState(() {
                      
                    });
               },),
                  Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                    RawMaterialButton(child:object.getlistforswitch(   Switch(activeColor: Colors.red,inactiveThumbColor: Color(0xff4F5E7B),value: isSwitched3,onChanged: (value){
                 setState(() {
                   isSwitched3=value;
                 });
               },), 'Blocking Messages'),onPressed: (){
                 setState(() {
                   
                 });
               },),
                  Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                    RawMaterialButton(child:object.getlistforswitch(   Switch(activeColor: Colors.red,inactiveThumbColor: Color(0xff4F5E7B),value: isSwitched4,onChanged: (value){
                 setState(() {
                   isSwitched4=value;
                 });
               },), 'Nearby Visible'),onPressed: (){
                 setState(() {
                   
                 });
               },),
                 
                 ])),
               SizedBox(height:10),
               Container(
                 width:328,
                 margin: EdgeInsets.only(left:10,right:10),
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
                 height: 120,
                 child: Column(children: [
                    RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Search Chat History'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                   Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                   RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Clear Chat History'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                 ],),
              ),
               SizedBox(height:10),
               Container(
                 width:328,
                 margin: EdgeInsets.only(left:10,right:10),
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
                 height: 120,
                 child: Column(children: [
                    RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Prohibitions'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                   Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                   RawMaterialButton(child:object.getlistforswitch(Switch(value: isSwitched5,activeColor: Colors.red,inactiveThumbColor: Color(0xff4F5E7B),onChanged: (value){
                     setState(() {
                       isSwitched5=value;
                     });
                   }), 'All Prohibitions'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                 ],),
              ),
              SizedBox(height:10),
                RawMaterialButton(child:Container(width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Group Manage') ,),onPressed: (){
                 setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>groupmanagec()));
                 });
               },),
           SizedBox(height:10),
             RawMaterialButton(child:Container(width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Report') ,),onPressed: (){
                 setState(() {
                   
                 });
               },),
               SizedBox(height:20),
               RawMaterialButton(child:Container(alignment: Alignment.center,width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(16)),child:Text('Disband',style:TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w400))),onPressed: (){
                 setState(() {
                   
                 });
               },),
           

        ],)
     );
  }
}