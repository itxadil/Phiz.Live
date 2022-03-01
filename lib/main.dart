import 'dart:async';

import 'package:flutter/material.dart';
import 'package:helloworld/home.dart';
import 'package:helloworld/login.dart';
import 'package:helloworld/signup.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:splash()));
}



class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 4),() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>YellowBird()));
          });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Color(0xffE5E5E5),
          body:Center(child:Column(children:[
            SizedBox(height:MediaQuery.of(context).size.height/2.5),
             //Image(image:AssetImage('assets/images/Splash.png'),width: MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/1.2),
             //Text('Phiz.live',style:TextStyle(color:Colors.redAccent,fontSize:40,fontWeight: FontWeight.w400)),
            //   - assets/images/vect6 (3).png
    //- assets/images/vect6 (1).png
         //SizedBox(width:70),
             Container(padding: EdgeInsets.only(left:80),alignment: Alignment.center,height:125,width: MediaQuery.of(context).size.width,decoration: BoxDecoration(color:Color(0xffE5E5E5), ),child:Row(children: [
             Image(image:AssetImage('assets/images/vect6 (3).png'),width: 120,height: 120,),
              Image(image:AssetImage('assets/images/vect6 (1).png'),width: 70,height: 70,),
             ],)),
             SizedBox(height:10),
             Text('Phiz.live',style:TextStyle(color:Colors.redAccent,fontSize:40,fontWeight: FontWeight.w400)),
             SizedBox(height:10),
             CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
          ]))
    );
  }
}


class YellowBird extends StatefulWidget {
  @override
  _YellowBirdState createState() => _YellowBirdState();
}

class _YellowBirdState extends State<YellowBird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body:ListView(children: [
          SizedBox(height:20,width: 20,),
          
             Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text("Welcome to",style:TextStyle(color:Colors.black,fontSize: 40,fontWeight: FontWeight.w800)),width: MediaQuery.of(context).size.width,),
          SizedBox(height: 20,width: 20,),
     Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text("Phiz.live",style:TextStyle(color:Colors.red,fontSize: 40,fontWeight: FontWeight.w800)),width: MediaQuery.of(context).size.width,),
           SizedBox(height:MediaQuery.of(context).size.height/2),
           Container(
             alignment: Alignment.center,
             width: MediaQuery.of(context).size.width,
             height: 60,
             margin: EdgeInsets.only(left:16,right:16),
             decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),
             child: RawMaterialButton(child: Text('Get Started',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.w800)),onPressed: (){
               setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>signuppage()));
               });
             },),
           ),
           SizedBox(height:20),
            Container(
              alignment: Alignment.center,
             width: MediaQuery.of(context).size.width,
             height: 60,
             margin: EdgeInsets.only(left:16,right:16),
             decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(10)),
             child: RawMaterialButton(child: Text('Log In',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.w800)),onPressed: (){
               setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>mywidget()));
               });
             },),
           ),


        ],)
    );
  }
}