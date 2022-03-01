import 'package:flutter/material.dart';


class mylist{
  mylist();
   ListTile getlisttileavatar(CircleAvatar img,String title,){
    return ListTile(
      
      leading:img,
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:14,fontWeight: FontWeight.w400)),
      trailing: Icon(Icons.arrow_forward_ios,color:Colors.black)
    );
  }

}

mylist listobj=new mylist();
class offaccount extends StatefulWidget {
  @override
  _offaccountState createState() => _offaccountState();
}

class _offaccountState extends State<offaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
      body:ListView(children: [
        SizedBox(height:24),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Official Accounts',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height: 20,),
     
          Container(margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
          child:listobj
          .getlisttileavatar(CircleAvatar(radius:25,backgroundImage: AssetImage('assets/images/icon7.png'),), 'Tag1')
          ),
          SizedBox(height:13),
                Container(margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
          child:listobj
          .getlisttileavatar(CircleAvatar(radius:25,backgroundImage: AssetImage('assets/images/icon8.png'),), 'Tag 2')
          ),
      
    


      ])
    );
  }
}