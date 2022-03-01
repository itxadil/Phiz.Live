import 'package:flutter/material.dart';
class Newgroup extends StatefulWidget {


  
  @override
  _NewgroupState createState() => _NewgroupState();
}

class _NewgroupState extends State<Newgroup> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
       body:SingleChildScrollView(child:Column(
         children: [
            SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Group Notices',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height:20),
          Container(
            width:MediaQuery.of(context).size.width,
            height:50,
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
                        suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10.0),child:Icon(Icons.search,color:Colors.black)),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color:Colors.black,width:5 )),
                      hintText: "Group Name",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:15)),),),
          ),
          SizedBox(height:10),
             Container(
            width:MediaQuery.of(context).size.width,
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
                       
                      hintText: "Moment",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:15)),),),
          ),
         ]))
       );
  }
}