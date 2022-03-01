import 'package:flutter/material.dart';
import 'package:helloworld/chatnewfriend.dart';
import 'package:helloworld/settings.dart';

class mylisttiles{
  mylisttiles();

        ListTile getlisttileavatar(CircleAvatar img,String title){
    return ListTile(
      leading:img,
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w500)),
    );
  }

}


mylisttiles object=new mylisttiles();
class newfriend extends StatefulWidget {


  @override
  _newfriendState createState() => _newfriendState();
}

class _newfriendState extends State<newfriend> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Color(0xffE5E5E5),
       body:ListView(children:[
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
          Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('New Friends',style:TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.w700)),width: MediaQuery.of(context).size.width,),
          SizedBox(height:20),
          Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKGJe39Tf2ENyMZyQohApTqjgw19Rwirukaw&usqp=CAU'),), 'Aalia Pittman'))),
           SizedBox(height:20),
         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyaFCxfkjXib6EO2q2fYYfGrJFLd6b1u30-w&usqp=CAU'),), 'Brendan Singleton'))),
           SizedBox(height:20),
         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYHlKh8_Yzq_bqvrsGepPY03Gb8Chuezvrgw&usqp=CAU'),), 'Amiha Escobar'))),
           SizedBox(height:20),
         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDC1oOl0vKcRzZLBS1BNpri9eSfEyarLyMmA&usqp=CAU'),), 'Holly Park'))),
           SizedBox(height:20),
         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiIoreiBS7DdBHKpNDbgPEV_gnb-e3Z9lGTA&usqp=CAU'),), 'Leon Murphy'))),
           SizedBox(height:20),
         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatnewfriendclass()));
            });},
            child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy4OZbcHGSrMYqXsZAJS9bmZOwG5u0ayS1Mg&usqp=CAU'),), 'Hammad Keith'))),
       ])
     );
  }
}