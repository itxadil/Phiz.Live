import 'package:flutter/material.dart';
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
class mobileaccount extends StatefulWidget {


  @override
  _mobileaccountState createState() => _mobileaccountState();
}

class _mobileaccountState extends State<mobileaccount> {
    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
       body: ListView( children:[
          ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Mobile Contacts',style:TextStyle( fontWeight:FontWeight.w700,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
        SizedBox(height: 25,),
     

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
Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('C',style:TextStyle(color:Colors.black,fontSize: 35,fontWeight:FontWeight.w700)),width:MediaQuery.of(context).size.width),

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
           padding: EdgeInsets.only(top:5,right:2),
            decoration: BoxDecoration(color:Colors.white,   borderRadius: BorderRadius.circular(10)
          ),
          child:object.getlisttileavatar(CircleAvatar(radius:35,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgf4_HlSE3tKV8knvIK2mQEGV7RHV5rW_7bQ&usqp=CAU'),), 'Cem Booker'),

        ),
       ])
       );
  }
}