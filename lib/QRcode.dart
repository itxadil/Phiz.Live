import 'package:flutter/material.dart';
class QR extends StatefulWidget {


  @override
  _QRState createState() => _QRState();
}

class _QRState extends State<QR> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(

         backgroundColor: Color(0xffE5E5E5),
         body:Column(children: [
           SizedBox(height: 30),
      ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('QR Code',style:TextStyle( fontWeight:FontWeight.w400,fontSize: 20,color:Colors.black)),trailing:Icon(Icons.more_vert,color: Colors.black,)),
              SizedBox(height: 40),
      Text("Taimour Sohail", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black)),
      //SizedBox(height: 10),
      Text("@taim8r", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black)),
      SizedBox(height: 80),
       Icon(Icons.qr_code_2,color:Colors.black,size:200),
       SizedBox(height:100,),
        RawMaterialButton(child:Container(
          alignment: Alignment.center,
             width: MediaQuery.of(context).size.width,
             height: 60,
             margin: EdgeInsets.only(left:16,right:16),
             decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),
           child:Text('Share Code',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 15))
           ),onPressed: (){
            setState(() {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            });
           }),
           SizedBox(height:20),
            RawMaterialButton(child:Container(
              alignment: Alignment.center,
             width: MediaQuery.of(context).size.width,
             height: 60,
             margin: EdgeInsets.only(left:16,right:16),
             decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(10)),
            child:Text('Share Code',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 15))
             ),onPressed: (){
            setState(() {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            });
             }),

         ],)

     );
  }
}