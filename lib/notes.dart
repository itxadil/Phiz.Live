import 'package:flutter/material.dart';
class note extends StatefulWidget {
  @override
  _noteState createState() => _noteState();
}

class _noteState extends State<note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:20),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Group Notices',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height: 20,),
        RawMaterialButton(child:Container(width:328,height:56,alignment: Alignment.center,margin: EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),
        child:Text('Add New Notes',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 14,color:Colors.white))
        ),onPressed: (){
          setState(() {
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
          });
        },),
            SizedBox(height: 20,),
            Container(alignment: Alignment.topRight,width:328,height:166,padding: EdgeInsets.only(left:10,right: 10,top:10),margin: EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            child:Column(children: [
              Text('Welcome Newsletter', style:TextStyle( fontWeight:FontWeight.w400,fontSize: 16,color:Colors.red)),
              SizedBox(height:5),
              Text('Date:31 August',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 10,color:Colors.black)),
              SizedBox(height:5),
              Text('Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book.',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 10,color:Colors.black))
           
        ],)
            ),
            SizedBox(height: 15,),
            Container(alignment: Alignment.topRight,width:328,height:166,padding: EdgeInsets.only(left:10,right:10,top:10),margin: EdgeInsets.only(left:20,right:20),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            child:Column(children: [
              Text('Welcome Newsletter',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 16,color:Colors.red)),
              SizedBox(height:5),
              Text('Date:31 August',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 10,color:Colors.black)),
              SizedBox(height:5),
              Text('Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book.',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 10,color:Colors.black))
           
        ],)
            ),

      ]))
    );
  }
}