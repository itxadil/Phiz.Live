import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

// 360 *780     (Size of screen)


class mycont {
  mycont();
 ClipRRect getcont(Image img) {
    return ClipRRect(
   
          borderRadius: BorderRadius.circular(15),
       
        child: img);
  }
}

mycont obj = new mycont();

class favclass extends StatefulWidget {
  @override
  _favclassState createState() => _favclassState();
}

class _favclassState extends State<favclass> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(child:Column(children: [
          SizedBox(height:20),
      ListTile(leading: Icon(Icons.arrow_back_sharp, color: Colors.black), title: Text("Favourites", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)), trailing: Icon(Icons.more_vert, color: Colors.black)),
      SizedBox(height: 10),
      Row(children: [
        SizedBox(width: 10),
        CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU')),
        SizedBox(width: 10),
        Text("Angela Bell", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15)),
      ]),
      SizedBox(height: 10),
      obj.getcont( Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'),width:328,height: 210, fit: BoxFit.fill)),
      SizedBox(height: 20),
      SizedBox(width:20),
      Row(children: [
        SizedBox(width: 30),
        obj.getcont( Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'),width: 104, height:79,fit: BoxFit.fill)),
        SizedBox(width: 10),
        obj.getcont( Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'), width: 104, height:79,fit: BoxFit.fill)),
        SizedBox(width: 10),
        obj.getcont( Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV_wiLvLt8KWDoSJGMc4AS0fBZnzqgHInpyQ&usqp=CAU'),width: 104, height:79, fit: BoxFit.fill))
     
      ]),
      SizedBox(height: 5),
      Text("Lorem Ipsum is simply dumming text of the printing", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15)),
      SizedBox(height: 10),
      Row(children: [
        SizedBox(width: 10),
        Icon(Icons.thumb_up),
        SizedBox(width: 10),
        Text("5", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15)),
        SizedBox(width: 10),
        Icon(Icons.message),
        SizedBox(width: 10),
        Text("1", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15)),
        SizedBox(width:155),
        Container(
            width: 130,
            height: 40,
            child: Stack(children: [
              CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU')),
              Positioned(right: 40, child: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'))),
              Positioned(right: 50, child: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'))),
              Positioned(right: 70, child: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'))),
              Positioned(right: 90, child: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'))),
            ])),
      ]),
      Divider(indent: 20, endIndent: 20),
      SizedBox(height: 10),
      Row(children: [
        SizedBox(width: 10),
        CircleAvatar(radius: 20, backgroundImage: NetworkImage('https://www.thewikifeed.com/wp-content/uploads/2021/04/zayn-malik-1.jpg')),
        SizedBox(width: 10),
        Text("Cem Booker", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15)),
      ]),
      SizedBox(height: 10),
      obj.getcont( Image(image: NetworkImage('https://www.thewikifeed.com/wp-content/uploads/2021/04/zayn-malik-1.jpg'),width: 328, height:210, fit: BoxFit.fill)),
      SizedBox(height: 5),
      SizedBox(height: 20),
      SizedBox(width:20),
      Row(children: [
        SizedBox(width: 30),
        obj.getcont( Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'),width: 104, height:79,fit: BoxFit.fill)),
        SizedBox(width: 10),
        obj.getcont( Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42cq62-yvaTdvDrY3cmjCGLj2r0dJa0Ccjw&usqp=CAU'), width: 104, height:79,fit: BoxFit.fill)),
        SizedBox(width: 10),
        obj.getcont( Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV_wiLvLt8KWDoSJGMc4AS0fBZnzqgHInpyQ&usqp=CAU'),width: 104, height:79, fit: BoxFit.fill))
      ]),
      SizedBox(height: 5),
      Text("Lorem Ipsum is simply dumming text of the printing", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15)),
      SizedBox(height: 5),
      Row(children: [
        SizedBox(width: 10),
        Icon(Icons.thumb_up),
        SizedBox(width: 10),
        Text("5", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15)),
        SizedBox(width: 10),
        Icon(Icons.message),
        SizedBox(width: 10),
        Text("1", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15)),
        SizedBox(width: 155),
        Container(
            width: 130,
            height: 40,
            child: Stack(children: [
              CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://www.thewikifeed.com/wp-content/uploads/2021/04/zayn-malik-1.jpg')),
              Positioned(right: 40, child: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://www.thewikifeed.com/wp-content/uploads/2021/04/zayn-malik-1.jpg'))),
              Positioned(right: 50, child: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://www.thewikifeed.com/wp-content/uploads/2021/04/zayn-malik-1.jpg'))),
              Positioned(right: 70, child: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://www.thewikifeed.com/wp-content/uploads/2021/04/zayn-malik-1.jpg'))),
              Positioned(right: 90, child: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://www.thewikifeed.com/wp-content/uploads/2021/04/zayn-malik-1.jpg'))),
            ])),
      ]),
    ])));
  }
}
