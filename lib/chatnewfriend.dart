import 'package:flutter/material.dart';
class chatnewfriendclass extends StatefulWidget {
  @override
  _chatnewfriendclassState createState() => _chatnewfriendclassState();
}


class _chatnewfriendclassState extends State<chatnewfriendclass> {
 //List datetime=[showDatePicker(initialDate: new DateTime.now(), firstDate: new DateTime(1900), lastDate: new DateTime(2100))];
  @override
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
        SizedBox(height:24),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Taimoor',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black)),trailing:Icon(Icons.more_vert,color: Colors.black,)),
        SizedBox(height: 50,),
        CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),
      ),
      SizedBox(height: 10),
        Text("Taimour", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black)),
           SizedBox(height: 10),
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

