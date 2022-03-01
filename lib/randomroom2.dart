import 'package:flutter/material.dart';

class images{
  images();
  ClipRRect getimage(Image img){
    return ClipRRect(
        child: img,
    );
  }
}
images object=new images();
class rr2 extends StatefulWidget {
  @override
  _rr2State createState() => _rr2State();
}

class _rr2State extends State<rr2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xffE5E5E5),
        body:Stack(children:[Container(padding: EdgeInsets.only(top:5),width:MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,child:GridView.count(mainAxisSpacing: 2,crossAxisCount: 2,children: [
          object.getimage(Image(image:NetworkImage('https://images.unsplash.com/photo-1567564967039-a5839aa2d89c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHRvdXJpc3R8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),width: 200,height: 202,fit: BoxFit.fill,)),
          object.getimage(Image(image:NetworkImage('https://www.crushpixel.com/static10/preview2/man-tourist-front-southern-european-559978.jpg'),width: 200,height: 202,fit: BoxFit.fill,)),
          object.getimage(Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr9snCg-TorRG-YvrcW-hyqBqsjEhNXIqk7A&usqp=CAU'),width: 200,height: 202,fit: BoxFit.fill,)),
          object.getimage(Image(image:NetworkImage('https://media.gettyimages.com/photos/skydivers-open-the-parachute-picture-id685764466?s=612x612'),width: 200,height: 202,fit: BoxFit.fill,)),
          object.getimage(Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvld4-derwJZuDWhsU-Cl36ZT5deUWZZUrT-8bOmh3ioZtUc3PEwq8arw7sk3Azh20QJU&usqp=CAU'),width: 200,height: 202,fit: BoxFit.fill,)),
          object.getimage(Image(image:NetworkImage('https://i.pinimg.com/originals/85/19/a3/8519a39c94fc7ed2025d1e1a28561873.jpg'),width: 200,height: 202,fit: BoxFit.fill,)),
          object.getimage(Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbBayLsTaYTH5oxfrGcx0Ef9BfgdJLfMJoRcpqzMlM4PX4cslzAHYCCJ6xA8bM4PJOjaA&usqp=CAU'),width: 200,height: 202,fit: BoxFit.fill,)),
          object.getimage(Image(image:NetworkImage('https://i.pinimg.com/originals/55/35/70/5535703011d826c009f9b9d024ab20d0.jpg'),width: 200,height: 202,fit: BoxFit.fill,)),
        ],)),
        Positioned(left:60,bottom: 40,child: CircleAvatar(radius:20,backgroundColor:Color(0xffE5E5E5),child: Icon(Icons.circle,color: Colors.white,),)),
        Positioned(left:130,bottom:40,child:CircleAvatar(radius:20,backgroundColor:Color(0xffE5E5E5),child: Icon(Icons.group,color: Colors.white,))),
               Positioned(left:200,bottom:40,child:CircleAvatar(radius:20,backgroundColor:Color(0xffE5E5E5),child: Icon(Icons.record_voice_over,color: Colors.white,))),
                       Positioned(left:270,bottom:40,child:CircleAvatar(radius:20,backgroundColor:Colors.red,child: Icon(Icons.phone,color: Colors.white,))),
                       Positioned(left:20,top:50,child:CircleAvatar(radius:20,backgroundColor:Color(0xffE5E5E5),child: Icon(Icons.cameraswitch_sharp,color: Colors.white,))),
                        Positioned(left:270,top:50,child:CircleAvatar(radius:20,backgroundColor:Color(0xffE5E5E5),child: Icon(Icons.video_call,color: Colors.white,))),
                         Positioned(left:340,top:50,child:CircleAvatar(radius:20,backgroundColor:Color(0xffE5E5E5),child: Icon(Icons.close,color: Colors.white,)))

        ])
    );
  }
}