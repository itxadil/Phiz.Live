import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:helloworld/notes.dart';
class listtitles{
  listtitles();
  ListTile getlist(Icon icon,String name){
    return ListTile(leading: Text(name,style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),trailing: icon,);
  }
   ListTile getlistforswitch(Switch s,String name1,String name2){
    return ListTile(title: Text(name1,style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),trailing: s,subtitle: Text(name2,style: TextStyle(color:Colors.black,fontSize: 8,fontWeight: FontWeight.w400),),);
  }
}
listtitles object=new listtitles();
class groupmanagec extends StatefulWidget {


  @override
  _groupmanagecState createState() => _groupmanagecState();
}

class _groupmanagecState extends State<groupmanagec> {
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
          ListTile(title:Text('Group Manage',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
               SizedBox(height:20),
                  RawMaterialButton(child:Container(width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Transfer of management right') ,),onPressed: (){
                 setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>note()));
                 });
               },),
               SizedBox(height: 10,),
                Container(
                 width:328,
                 margin: EdgeInsets.only(left:10,right:10),
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
                 height: 120,
                 child: Column(children: [
                    RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Add Administrator'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                   Divider(height: 0.1,color: Colors.black,indent: 20,endIndent: 20,),
                   RawMaterialButton(child:object.getlist(Icon(Icons.arrow_forward_ios,color:Colors.black), 'Cancel Administrator'),onPressed: (){
                     setState(() {
                       
                     });
                   },) ,
                 ],),
              ),
              SizedBox(height: 10,),
          Container(padding: EdgeInsets.only(bottom: 5),width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlistforswitch(Switch(value: isSwitched1,activeColor: Colors.red,inactiveThumbColor: Color(0xffE5E5E5), onChanged: (value){
            setState(() {
              isSwitched1=value;
            });
          }), 'All Prohibitions','After enabling,group members need to confirm to invite friends') ,),
          SizedBox(height:10),
            Container(padding: EdgeInsets.only(bottom: 5),width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlistforswitch(Switch(value: isSwitched2,activeColor: Colors.red,inactiveThumbColor: Color(0xffE5E5E5), onChanged: (value){
            setState(() {
              isSwitched2=value;
            });
          }), 'Show number of people read','When enabled,group message shows the number of people') ,),
                SizedBox(height:10),
                  Container(padding: EdgeInsets.only(bottom: 5),width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlistforswitch(Switch(value: isSwitched3,activeColor: Colors.red,inactiveThumbColor: Color(0xffE5E5E5), onChanged: (value){
            setState(() {
              isSwitched3=value;
            });
          }), 'Show group members','After closing,ordinary members will not be able to see other groups') ,),
          SizedBox(height:10),
            Container(padding: EdgeInsets.only(bottom: 5),width: MediaQuery.of(context).size.width,height: 56,margin: EdgeInsets.only(left:10,right:10),decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),child:object.getlistforswitch(Switch(value: isSwitched4,activeColor: Colors.red,inactiveThumbColor: Color(0xffE5E5E5), onChanged: (value){
            setState(() {
              isSwitched4=value;
            });
          }), 'Private Chat of ordinary members','After closing, the normal members clicks on the avatars...') ,),
        ])
        );
  }
}