
import 'package:flutter/material.dart';
import 'package:helloworld/group.dart';
import 'package:helloworld/mobilecontacts.dart';
import 'package:helloworld/newfriends.dart';
import 'package:helloworld/officialaccount.dart';
import 'package:helloworld/settings.dart';
import 'package:helloworld/tags.dart';
import 'package:helloworld/workplace.dart';

class mylisttiles{
  mylisttiles();
  ListTile getlisttile(Icon icon,String title){
    return ListTile(
      leading:icon,
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w500)),
    );
  }
        ListTile getlisttileavatar(CircleAvatar img,String title){
    return ListTile(
      leading:img,
      title:Text(title,style:TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.w500)),
    );
  }

}


mylisttiles object=new mylisttiles();
class contactclass extends StatefulWidget {


  @override
  _contactclassState createState() => _contactclassState();
}

class _contactclassState extends State<contactclass> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Color(0xffE5E5E5),
       body: ListView( children:[
         SizedBox(height:20),
       Container(width: MediaQuery.of(context).size.width,decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Row(children:[Text('Phiz.live',style:TextStyle(color:Colors.red,fontSize:30,fontWeight:FontWeight.w700)),
           SizedBox(width:MediaQuery.of(context).size.width/2),
           Icon(Icons.notifications_active,color:Colors.black),
           SizedBox(width:10),
                Icon(Icons.more_vert,color:Colors.black),

         ],),
              ),
         SizedBox(height:20),
             Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('Contacts',style:TextStyle(color:Colors.black,fontSize:30,fontWeight:FontWeight.w700)),width: MediaQuery.of(context).size.width,),
           SizedBox(height:20),
          Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           
            decoration: BoxDecoration(color:Colors.white
            , borderRadius: BorderRadius.circular(15)
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

         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> newfriend()));
            });},
            child:object.getlisttile(Icon(Icons.people), 'New Friends'))
        ),    
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> group()));
            });},
            child:object.getlisttile(Icon(Icons.group), 'Groups'))
        ),  
          SizedBox(height:20),

         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> workplaceclass()));
            });},
            child:object.getlisttile(Icon(Icons.work_sharp), 'Workplace'))
        ),  

          SizedBox(height:20),

         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,
               borderRadius: BorderRadius.circular(10)

          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> tagclass()));
            });},
            child:object.getlisttile(Icon(Icons.tag_faces_sharp), 'Tags'))
        ),  
          SizedBox(height:20),

         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> offaccount()));
            });},
            child:object.getlisttile(Icon(Icons.person), 'Official Accounts'))
        ),  
          SizedBox(height:20),

         Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> mobileaccount()));
            });},
            child:object.getlisttile(Icon(Icons.contact_page), 'Mobile Contacts'))
        ),  
          SizedBox(height:20),
        Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('A',style:TextStyle(color:Colors.black,fontSize: 35,fontWeight:FontWeight.w700)),width: MediaQuery.of(context).size.width,),
        SizedBox(height:20),
        Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOgdGIbPzg_PQyAns0piVNpIP6iL5F8WTdXA&usqp=CAU'),), 'Angela Bell'),

        ),
          SizedBox(height:20),
        Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiIoreiBS7DdBHKpNDbgPEV_gnb-e3Z9lGTA&usqp=CAU'),), 'Albert Taylor'),

        ),
        SizedBox(height:20),
          SizedBox(width:10),
        Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('B',style:TextStyle(color:Colors.black,fontSize: 35,fontWeight:FontWeight.w700)),width:MediaQuery.of(context).size.width),

           SizedBox(height:20),
        Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),), 'Brenden Singleton'),

        ),
        SizedBox(height:20),
            Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQox6NIDpj-cJtoVV1AyLH6aimq4U_OsNYC1g&usqp=CAU'),), 'Bushra Madden'),
            ),
        SizedBox(height:20),
        SizedBox(width:10),
   Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('C',style:TextStyle(color:Colors.black,fontSize: 35,fontWeight:FontWeight.w700)),width: MediaQuery.of(context).size.width,),

           SizedBox(height:20),
        Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:object.getlisttileavatar(CircleAvatar(radius:25,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOgdGIbPzg_PQyAns0piVNpIP6iL5F8WTdXA&usqp=CAU'),), 'Chanica Dillon'),

        ),
             SizedBox(height:20),
        Container(
            width:MediaQuery.of(context).size.width,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           padding: EdgeInsets.only(top:5),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:object.getlisttileavatar(CircleAvatar(radius:35,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgf4_HlSE3tKV8knvIK2mQEGV7RHV5rW_7bQ&usqp=CAU'),), 'Cem Booker'),

        ),
         ])
     );
}
}