import 'package:flutter/material.dart';
import 'package:helloworld/groupinfo.dart';
import 'package:helloworld/newgroup.dart';
class group extends StatefulWidget {


  @override
  _groupState createState() => _groupState();
}

class _groupState extends State<group> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
       body: ListView( children:[
         SizedBox(height:20),
           Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
     
            decoration: BoxDecoration(color:Colors.white,
            borderRadius: BorderRadius.circular(15)

          ),
          child: Form(child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                  
                        errorStyle: TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w300),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10.0),child:Icon(Icons.search,color:Colors.black)),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5 )),
                      hintText: "Search",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)),),),
          ),

          SizedBox(height:20),
          RawMaterialButton(child:Container(
            width:328,
            height:56,
             alignment: Alignment.center,
            margin:EdgeInsets.only(top:30,left:16,right:16),
            decoration: BoxDecoration(color:Colors.redAccent,borderRadius: BorderRadius.circular(10)),
          
          child:Text('Create New Group',style:TextStyle(color:Colors.white,fontSize:14,fontWeight:FontWeight.w600))),onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Newgroup()));
            });
          },),
           SizedBox(height:18),
          Container(height: 39,
              margin:EdgeInsets.only(left:20),
               width: 276,
               child:Text('Groups by me',style: TextStyle(color:Colors.black,fontSize:18,fontWeight:FontWeight.w600)),),
                  SizedBox(height:20),
                  Container(
                    width:358,
                    height:56,
                    margin:EdgeInsets.only(left:16,right:16),
                    decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
                    child:ListTile(
                      onTap:(){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>groupinfo()));
                        });
                      },
                      leading:Image(image:AssetImage('assets/images/icon1.png'),width:36,height:36),
                      title:Text('Group A',style:TextStyle(color:Colors.black,fontSize:14,fontWeight:FontWeight.w400))

                    )
                  ),
                  SizedBox(height:18),
                    
                  Container(
                    width:358,
                    height:56,
                    margin:EdgeInsets.only(left:16,right:16),
                    decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
                    child:ListTile(
                      onTap:(){
                        setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>groupinfo()));
                        });
                      },
                      leading:Image(image:AssetImage('assets/images/icon2.png'),width:36,height:36),
                      title:Text('Group B',style:TextStyle(color:Colors.black,fontSize:14,fontWeight:FontWeight.w400))

                    )
                  ),
                  SizedBox(height:18),
                    Container(height: 39,
              margin:EdgeInsets.only(left:20),
               width: 276,
               child:Text('Groups by me',style: TextStyle(color:Colors.black,fontSize:18,fontWeight:FontWeight.w600)),),
                  SizedBox(height:20),
                  Container(
                    width:358,
                    height:56,
                    margin:EdgeInsets.only(left:16,right:16),
                    decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
                    child:ListTile(
                      onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>groupinfo()));
                      },
                      leading:Image(image:AssetImage('assets/images/icon3.png'),width:36,height:36),
                      title:Text('Group 1',style:TextStyle(color:Colors.black,fontSize:14,fontWeight:FontWeight.w400))

                    )
                  ),
                  SizedBox(height:18),
                    
                  Container(
                    width:358,
                    height:56,
                    margin:EdgeInsets.only(left:16,right:16),
                    decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
                    child:ListTile(
                      onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>groupinfo()));
                      },
                      leading:Image(image:AssetImage('assets/images/icon4.png'),width:36,height:36),
                      title:Text('Group 2',style:TextStyle(color:Colors.black,fontSize:14,fontWeight:FontWeight.w400))

                    )
                  ),


       ])
     );
  }
}