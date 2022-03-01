import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helloworld/chatmsg.dart';


class mylist {
  mylist();
  ListTile getlist(String name, CircleAvatar ca) {
    return ListTile(
        leading: ca,
        title: Text(name, style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700)),
        subtitle: Text("Message by the user", style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w100)),
        trailing: Container(
          width: 80,
          height: 20,
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(color:  Color(0xffE5E5E5),),
          child: Text('07:00 pm', style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w100)),
        ));
  }
}

mylist obj = new mylist();

class chatclass extends StatefulWidget {
  @override
  _chatclassState createState() => _chatclassState();
}

class _chatclassState extends State<chatclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
      appBar:AppBar(title:Text("Message Page",style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white))),

        body:SingleChildScrollView(child:Column(children: [
          SizedBox(height:20),
          SizedBox(width:35),
      
      Text("Chat Messages", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black)),
      SizedBox(height: 15),
      Container(
          width: 350,
          height: 50,
          margin: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
          child: Form(
              child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5.0, color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsetsDirectional.only(end: 10),
                        child: Icon(Icons.search_rounded, color: Colors.black),
                      ))))),
      SizedBox(height: 10),
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/9,
          // padding: EdgeInsets.only(right: 300, top: 10),
          decoration: BoxDecoration(
             color: Color(0xffE5E5E5),
          ),
          child: Column(children: [
            Text("Live", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)),
            SizedBox(height: 10),
            Row(children: [
              SizedBox(width:20),
              Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),
                ),
                Positioned(left: 32, bottom: 5, child: CircleAvatar(backgroundColor: Colors.red, radius: 7))
              ]),
              SizedBox(width: 10),
              Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),
                ),
                Positioned(left: 32, bottom: 5, child: CircleAvatar(backgroundColor: Colors.red, radius: 7))
              ]),
              SizedBox(width: 10),
              Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),
                ),
                Positioned(left: 32, bottom: 5, child: CircleAvatar(backgroundColor: Colors.red, radius: 7))
              ]),
              SizedBox(width: 10),
              Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),
                ),
                Positioned(left: 32, bottom: 5, child: CircleAvatar(backgroundColor: Colors.red, radius: 7))
              ]),
              SizedBox(width: 10),
              Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZyxStfFlO4Mh-3vZ_2W2uvpyCfTWYVNT_0A&usqp=CAU'),
                ),
                Positioned(left: 32, bottom: 5, child: CircleAvatar(backgroundColor: Colors.red, radius: 7))
              ]),
              SizedBox(width: 10),
              Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgf4_HlSE3tKV8knvIK2mQEGV7RHV5rW_7bQ&usqp=CAU'),
                ),
                Positioned(left: 32, bottom: 5, child: CircleAvatar(backgroundColor: Colors.red, radius: 7))
              ]),
            ])
          ])),
      SizedBox(height: 10),
      SizedBox(width:50),
      Text("Messages", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)),
      RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatting()));
            });},
            child:obj.getlist('Leilani Greer', CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFvsvlDTQcd6LZ1F2vqZD9W6rbTOrqPc0ajA&usqp=CAU')))),
      SizedBox(height: 5),
      Divider(indent: 20, endIndent: 20, thickness: 0.1, color: Colors.black, height: 10),
      RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatting()));
            });},
            child:obj.getlist('Aalia Pittman', CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU')))),
      SizedBox(height: 5),
      Divider(indent: 20, endIndent: 20, thickness: 0.1, color: Colors.black, height: 10),
      RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatting()));
            });},
            child:obj.getlist('Lellie Whitmore', CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU')))),
      SizedBox(height: 5),
      Divider(indent: 20, endIndent: 20, thickness: 0.1, color: Colors.black, height: 10),
      RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatting()));
            });},
            child:obj.getlist('Ryan Ratciliffe', CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFvsvlDTQcd6LZ1F2vqZD9W6rbTOrqPc0ajA&usqp=CAU')))),
      SizedBox(height: 5),
      Divider(indent: 20, endIndent: 20, thickness: 0.1, color: Colors.black, height: 10),
      RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatting()));
            });},
            child:obj.getlist('Edie Haynes', CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFvsvlDTQcd6LZ1F2vqZD9W6rbTOrqPc0ajA&usqp=CAU')))),
      SizedBox(height: 5),
      Divider(indent: 20, endIndent: 20, thickness: 0.1, color: Colors.black, height: 10),
      RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatting()));
            });},
            child:obj.getlist('Leilani Greer', CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU')))),
      SizedBox(height: 5),
      Divider(indent: 20, endIndent: 20, thickness: 0.1, color: Colors.black, height: 10),
      RawMaterialButton(
            onPressed: (){ setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> chatting()));
            });},
            child:obj.getlist('Aalia Pittman', CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmIxKdEnI1G-6kQYmi6KDr30z7OHZQAFqcUw&usqp=CAU')))),
      SizedBox(height: 5),
    ])));
  }
}
