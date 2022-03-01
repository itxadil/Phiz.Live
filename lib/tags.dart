import 'package:flutter/material.dart';
import 'package:helloworld/edittags.dart';


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
class tagclass extends StatefulWidget {
  @override
  _tagclassState createState() => _tagclassState();
}

class _tagclassState extends State<tagclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
      body:ListView(children: [
        SizedBox(height:24),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Tags',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black))),
        SizedBox(height: 25,),
        Container(margin: EdgeInsets.only(left:16,right:16),height:60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(15)),
        child: Form(child: TextFormField(
        
            keyboardType: TextInputType.text,
            
            decoration: InputDecoration(
                   fillColor: Colors.white,
                    filled:true,
                       
              
                      
                        suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10.0),child:Icon(Icons.search,color:Colors.black)),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5 )),
                      hintText: "Search by phone or name",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)),),),
          
        ),
        SizedBox(height:20),
        RawMaterialButton(child:Container( alignment: Alignment.center,margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(10)),
        child:Text('Create New Tags',style:TextStyle(color:Colors.white,fontSize: 14,fontWeight:FontWeight.w600))
        ),onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>tagediting()));
            });
        }),
  SizedBox(height:20),
          Container(margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
          child:listobj
          .getlisttileavatar(CircleAvatar(radius:25,backgroundImage: AssetImage('assets/images/icon7.png'),), 'Tag1')
          ),
          SizedBox(height:13),
                Container(margin: EdgeInsets.only(left:16,right:16),height: 60,width:328,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(16)),
          child:listobj
          .getlisttileavatar(CircleAvatar(radius:25,backgroundImage: AssetImage('assets/images/icon8.png'),), 'Tag 2')
          ),
      ])
    );
  }
}