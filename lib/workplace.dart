import 'package:flutter/material.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class mylist{
  mylist();
   ListTile getlisttileavatar(CircleAvatar img,String title,){
    return ListTile(
      
      leading:img,
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:14,fontWeight: FontWeight.w400)),
    );
  }

}

mylist listobj=new mylist();
class workplaceclass extends StatefulWidget {
  @override
  _workplaceclassState createState() => _workplaceclassState();
}


class _workplaceclassState extends State<workplaceclass> {
 //List datetime=[showDatePicker(initialDate: new DateTime.now(), firstDate: new DateTime(1900), lastDate: new DateTime(2100))];
  @override
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color(0xffE5E5E5),
      body:ListView(children: [
        SizedBox(height:24),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Workplace',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black)),trailing:Icon(Icons.more_vert,color: Colors.black,)),
        SizedBox(height: 25,),
        Container(margin: EdgeInsets.only(left:16,right:16),height:60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(15)),
        child: Form(child: TextFormField(
        
            keyboardType: TextInputType.text,
            
            decoration: InputDecoration(
                   fillColor: Colors.white,
                    filled:true,
                       
              
                      
                        suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10.0),child:Icon(Icons.search,color:Colors.black)),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5 )),
                      hintText: "Search",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)),),),
          
        ),
        SizedBox(height:20),
        RawMaterialButton(child:Container( alignment: Alignment.center,margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(10)),
        child:Text('Create New Workplace',style:TextStyle(color:Colors.white,fontSize: 14,fontWeight:FontWeight.w600))),onPressed: (){
            setState(() {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            });
        }),
        SizedBox(height:40),
         Container(margin: EdgeInsets.only(left:16,),height: 56,width:328,decoration: BoxDecoration(color: Color(0xffE5E5E5),),
         child:Text('My workplace',style:TextStyle(color:Colors.black,fontSize: 25,fontWeight:FontWeight.w600))
         ),
         SizedBox(height:20),
          Container(margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
          child:listobj
          .getlisttileavatar(CircleAvatar(radius:25,backgroundImage: AssetImage('assets/images/icon5.png'),), 'Google')
          ),
          SizedBox(height:13),
                Container(margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
          child:listobj
          .getlisttileavatar(CircleAvatar(radius:25,backgroundImage: AssetImage('assets/images/icon6.png'),), 'Apple')
          ),
      ],)
    );
  }
}