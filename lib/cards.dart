import 'package:flutter/material.dart';
class cardclass extends StatefulWidget {
  @override
  _cardclassState createState() => _cardclassState();
}


class _cardclassState extends State<cardclass> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),trailing: Icon(Icons.more_vert,color:Colors.black),title: Text('Cards',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),),
        //SizedBox(height: 25,),
     
        SizedBox(height:20),
        Container(margin: EdgeInsets.only(left:16),width:MediaQuery.of(context).size.width,height: 25,decoration: BoxDecoration(color: Color(0xffE5E5E5),),
        child: Text('All Cards',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
        ),
        SizedBox(height:15),
        Image(image:AssetImage('assets/images/vect5.png'),width: 270,height: 150,),
        SizedBox(height:20),
             Image(image:AssetImage('assets/images/vect5.png'),width: 270,height: 150,),
           SizedBox(height:20),
            Image(image:AssetImage('assets/images/vect5.png'),width: 270,height: 150,),
      ]))
    );
  }
}