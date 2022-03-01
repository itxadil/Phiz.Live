import 'package:flutter/material.dart';
import 'package:helloworld/afterlogin.dart';
class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body:ListView(children: [
          SizedBox(height:20,width: 20,),
              Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:22,margin: EdgeInsets.only(left:16),child:Text("Hy Taimoor",style:TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),width: MediaQuery.of(context).size.width,),
            SizedBox(height:10),
             Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text("Welcome to",style:TextStyle(color:Colors.black,fontSize: 40,fontWeight: FontWeight.w800)),width: MediaQuery.of(context).size.width,),
          SizedBox(height: 20,width: 20,),
     Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text("Phiz.live",style:TextStyle(color:Colors.red,fontSize: 40,fontWeight: FontWeight.w800)),width: MediaQuery.of(context).size.width,),
           SizedBox(height:MediaQuery.of(context).size.height/1.7),
           Container(
             alignment: Alignment.center,
             width: MediaQuery.of(context).size.width,
             height: 60,
             margin: EdgeInsets.only(left:16,right:16),
             decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),
             child: RawMaterialButton(child: Text('Skip',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.w800)),onPressed: (){
               setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>afterloginclass()));
               });
             },),
           ),
           

        ],)
    );
  }
}