import 'package:flutter/material.dart';


class mylisttiles{
  mylisttiles();

        ListTile getlisttileavatar(CircleAvatar img,String title){
    return ListTile(
      leading:img,
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:16,fontWeight: FontWeight.w400)),
    );
  }

}


mylisttiles object=new mylisttiles();

class tagediting extends StatefulWidget {
  @override
  _tageditingState createState() => _tageditingState();
}

class _tageditingState extends State<tagediting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:30),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Edit Tags',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height: 20,),
         Container(
            width:328,
            height:50,
           
           
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
                      hintText: "Tag Name",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:15)),),),
          ),
          SizedBox(height:20),
          Container(width:328,height:56,alignment: Alignment.center,decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(10)),child: Text('Add Members',style: TextStyle(color:Colors.white,fontSize:15,fontWeight: FontWeight.w400),),),
          SizedBox(height:20),
           Container(margin: EdgeInsets.only(left:16),width:328,height:30,decoration: BoxDecoration(color:Color(0xffE5E5E5)),child:Text('All Members',style: TextStyle(color:Colors.black,fontSize:24,fontWeight: FontWeight.w600),)),
       SizedBox(height: 20,),
       Container(width:328,height:56,decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),child:object.getlisttileavatar(CircleAvatar(radius:20,backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmIxKdEnI1G-6kQYmi6KDr30z7OHZQAFqcUw&usqp=CAU'),), 'Angela Bell')),
       SizedBox(height:10),
        Container(width:328,height:56,decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),child:object.getlisttileavatar(CircleAvatar(radius:20,backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyaFCxfkjXib6EO2q2fYYfGrJFLd6b1u30-w&usqp=CAU'),), 'Cem Booker')),
      ]))
    );
  }
}
