import 'package:flutter/material.dart';


class mylisttiles{
  mylisttiles();
  ListTile getlisttile(CircleAvatar icon1,String title){
    return ListTile(
      leading:icon1,
      trailing:Icon(Icons.check_circle,color:Color(0xffC4C4C4)),
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w500)),
    );
  }
     
  }
  mylisttiles object=new mylisttiles();
class topup extends StatefulWidget {
  @override
  _topupState createState() => _topupState();
}

class _topupState extends State<topup> {
  String rupees=" ";
  TextEditingController rupee =TextEditingController();
  var _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xffE5E5E5),
     body:SingleChildScrollView(child: Column(children: [
        SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Top Ups',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height:20),
         Container(height:56,width:328,decoration: BoxDecoration(color:Color(0xffE5E5E5),borderRadius:BorderRadius.circular(10)),child:Form(
           key:_formKey,
           child:TextFormField(
             keyboardType: TextInputType.text,
            
             decoration: InputDecoration(fillColor: Colors.white,filled: true,border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 5),borderRadius: BorderRadius.circular(10)),hintText: 'Amount ¥',hintStyle: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)),
           )
         )),
         SizedBox(height: 10,),
         Container(width:328,height:56,decoration: BoxDecoration(color: Color(0xffE5E5E5),),child:Text('Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 12,color:Colors.black))),
         SizedBox(height:10),
         Container(
           width:328,height:56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
           child: ListTile(trailing: Icon(Icons.check_circle,color: Colors.black),leading: Image(image:AssetImage('assets/images/vect1.png')),title: Text('WeChat Pay',style: TextStyle(color:Colors.black,fontSize:14,fontWeight: FontWeight.w500),),),
         ),
         SizedBox(height:10),
          Container(
           width:328,height:56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
           child: object.getlisttile(CircleAvatar(radius: 15,backgroundImage: AssetImage('assets/images/vect4.png'),), 'Ali Pay')
         ),
             SizedBox(height:10),
          Container(
           width:328,height:56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
           child: object.getlisttile(CircleAvatar(radius: 15,backgroundImage: AssetImage('assets/images/vect3.png'),), 'Bank pay')
         ),
              SizedBox(height:10),
          Container(
           width:328,height:56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
           child: object.getlisttile(CircleAvatar(radius: 15,backgroundImage: AssetImage('assets/images/vect2.png'),), 'Bany Pay Web')
         ),

      
     ],),)
    );
  }
}