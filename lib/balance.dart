import 'package:flutter/material.dart';
import 'package:helloworld/cards.dart';
import 'package:helloworld/topups.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class mycont{
  mycont();
  ListTile getlist(Icon icon1,Icon icon2,String name){
   return ListTile(
     leading:icon1,
     title:Text(name,style:TextStyle(fontSize:18,fontWeight:FontWeight.w400,color:Colors.black)),
     trailing: icon2,
     
   );
  }
  Container getcont(Icon icon1,Icon icon2,String name){
    return Container(
      width:328,
      height:58,
      //padding:EdgeInsets.only(left:5,right:5,top:4),
      margin:EdgeInsets.only(left:20,right:20),
      decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color:Colors.white),
      child:getlist(icon1, icon2, name)
    );
  }
}

mycont obj=new mycont();
class balanceclass extends StatefulWidget {
  @override
  _balanceclassState createState() => _balanceclassState();
}


class _balanceclassState extends State<balanceclass> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),trailing: Icon(Icons.more_vert,color:Colors.black),),
        //SizedBox(height: 25,),
     
        SizedBox(height:20),
        Container(height: 35,width:MediaQuery.of(context).size.width,margin: EdgeInsets.only(left:10),decoration: BoxDecoration(color:Color(0xffE5E5E5),),child:Text("Balance",style:TextStyle(fontSize:30,fontWeight:FontWeight.w600,color:Colors.black))),
        SizedBox(height:30),
        
        Container(alignment: Alignment.center,margin:EdgeInsets.only(left:20),decoration:BoxDecoration(borderRadius:BorderRadius.circular(16),color:Colors.white),width: 216,height:90,child:Text(
          '¥ 355',style:TextStyle(fontSize:48,fontWeight:FontWeight.w600,color:Colors.red) ) ,),
        SizedBox(height:20),
        RawMaterialButton(child:Container(alignment: Alignment.center,height:46,width:216,decoration:BoxDecoration(borderRadius:BorderRadius.circular(15),color:Colors.black),margin:EdgeInsets.only(left:20),
          child: Text("Done",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w600,fontSize:14)),),onPressed: (){
            setState(() {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>topup()));
            });
          },),
           SizedBox(height:30),
       Container(
         width:328,
         height:80,
         margin:EdgeInsets.only(left:20,right:20),
         padding:EdgeInsets.only(left:30),
         decoration:BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.white),
         child:Row(children: [
           Row(children: [
              Icon(Icons.image,color: Colors.pink,size:35),
              SizedBox(width:10),
              Text("Withdraw",style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color:Colors.black))
           ],),
           SizedBox(width:20),
           VerticalDivider(width:1,color:Colors.black,indent: 20,endIndent: 20,),
           SizedBox(width:20),
               Row(children: [
              Icon(Icons.image,color: Colors.pink,size:35),
              SizedBox(width:10),
              Text("Recharge",style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color:Colors.black))
           ],),
         ],)
         ,), 
        SizedBox(height:20),


         RawMaterialButton(child:Container(width: 328,height: 56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:obj.getlist(Icon(Icons.image,color:Colors.pink), Icon(Icons.arrow_forward_ios_outlined,color:Colors.black), 'Cards')),onPressed: (){
           setState(() {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>cardclass()));
           });
         },),
         SizedBox(height:10),
                RawMaterialButton(child:Container(width: 328,height: 56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:obj.getlist(Icon(Icons.image,color:Colors.pink), Icon(Icons.arrow_forward_ios_outlined,color:Colors.black), 'Transfer')),onPressed: (){
           setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>topup()));
           });
         },),
         SizedBox(height:10),
               RawMaterialButton(child:Container(width: 328,height: 56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:obj.getlist(Icon(Icons.image,color:Colors.pink), Icon(Icons.arrow_forward_ios_outlined,color:Colors.black), 'Real_name authentication')),onPressed: (){
           setState(() {
             
           });
         },),
         SizedBox(height:10),
               RawMaterialButton(child:Container(width: 328,height: 56,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:obj.getlist(Icon(Icons.image,color:Colors.pink), Icon(Icons.arrow_forward_ios_outlined,color:Colors.black), 'Edit Payment Password')),onPressed: (){
           setState(() {
             
           });
         },),

      ],),)
    );
  }
}