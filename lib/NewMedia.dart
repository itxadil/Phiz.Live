import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/rendering.dart';




class mylisttiles{
  mylisttiles();
  ListTile getlisttile(Icon icon1,String title){
    return ListTile(
      leading:icon1,
      trailing:Icon(Icons.arrow_forward_ios_outlined,size:20,color:Colors.black),
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:16,fontWeight: FontWeight.w400)),
    );
  }
     
  }
  


mylisttiles object=new mylisttiles();
class newmedia extends StatefulWidget {
  @override
  _newmediaState createState() =>  _newmediaState();
}

class _newmediaState extends State<newmedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:24),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('New Media',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black))),
        SizedBox(height: 25,),
           Container(
            width:328,
            height:239,
            margin: EdgeInsets.only(left:15,right:15),
           
            decoration: BoxDecoration(color:Colors.white
            , borderRadius: BorderRadius.circular(10)
          ),
          child: Form(child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                  
                        errorStyle: TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w300),
                        fillColor: Colors.white,
                        filled: true,
                         border: InputBorder.none,
                       
                      hintText: "Input Something",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:13)),),),
          ),
          SizedBox(height:20),
        Container(margin: EdgeInsets.only(right:250),width: 70,height:70,decoration: BoxDecoration(color: Color(0xffE5E5E5)),
        child:DottedBorder(borderType: BorderType.Rect,child: Container(
          width:64,
          height:64,
          decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
         child: Icon(Icons.add,color:Colors.black),
        ))),
          SizedBox(height:20),
          RawMaterialButton(child:Container(width:328,height:56,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),child: object.getlisttile(Icon(Icons.place,color:Colors.red), 'Location'),),onPressed: (){
            setState(() {
              
            });
          },),
          SizedBox(height:20),
          RawMaterialButton(child:Container(width:328,height:56,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),child: object.getlisttile(Icon(Icons.place,color:Colors.red), 'Share With'),),onPressed: (){
            setState(() {
              
            });
          },),
          SizedBox(height:20),
          RawMaterialButton(child:Container(width:328,height:56,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),child: object.getlisttile(Icon(Icons.place,color:Colors.red), 'Mention'),),onPressed: (){
            setState(() {
              
            });
          },),
          SizedBox(height:20),
          RawMaterialButton(child:Container(alignment: Alignment.center,width:328,height:56,decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(10)),child: Text('Done',style: TextStyle(color:Colors.white,fontSize:14,fontWeight:FontWeight.w400),)),onPressed: (){
            setState(() {
              
            });
          },)
      ]))
    );
  }
  }