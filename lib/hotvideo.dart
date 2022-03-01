



import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class hvideo extends StatefulWidget {
  @override
  _hvideoState createState() => _hvideoState();
}

class _hvideoState extends State<hvideo> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerController;

  @override
  void initState() {
    _controller=VideoPlayerController.network('https://youtu.be/4P_mMHnIPoE');
    _initializeVideoPlayerController=_controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
      body:SingleChildScrollView(child:Column(children: [
         SizedBox(height:40),
        ListTile(leading:Icon(Icons.arrow_back,color:Colors.black),title:Text('Hot Video',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 25,color:Colors.black)),trailing: Icon(Icons.more_vert,color:Colors.black),),
      
    // Container(
      // width:MediaQuery.of(context).size.width,
       //height: MediaQuery.of(context).size.height,
       //padding: EdgeInsets.only(top:3),
       //decoration: BoxDecoration(color:Color(0xff424242)),
       //child:Column(children: [
        
      /*FutureBuilder(
        future: _initializeVideoPlayerController,
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done){
            return AspectRatio(aspectRatio:_controller.value.aspectRatio,child: VideoPlayer(_controller));

          } else{
               return Center(child: CircularProgressIndicator());
          }
        },
      ),

       Center(child:RawMaterialButton(child:Icon( _controller.value.isPlaying ? Icons.pause: Icons.play_arrow, color:Colors.white,size:50,),onPressed: (){
          setState(() {
            if(_controller.value.isPlaying){
              _controller.pause();
            } else{
              _controller.play();
            }
          });
      }
      ,))*/
      
      Stack(children:[ClipRRect(child: Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsdMsdgtMK8OqH-z1P2i6Zz-ZONFq7su59qQ&usqp=CAU'),width:MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,fit:BoxFit.fill)),
      Positioned(child:ListTile(leading: CircleAvatar(
        radius: 25,
        backgroundColor: Color(0xff424242),
        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvgoIL8NKu65UbDwYekVmHgZSCqw7ar-DZQ&usqp=CAU'),
      ),title:Text('@taim8r',style:TextStyle( fontWeight:FontWeight.w600,fontSize: 14,color:Colors.white)),trailing: Icon(Icons.bookmark,color:Colors.white),)),
      Positioned(bottom: 490,left:150,child: Image(image: AssetImage('assets/images/Vector.png'),)),
      Positioned(bottom:125,child:   Container(
            width:MediaQuery.of(context).size.width/1.4,
            height:60,
            margin: EdgeInsets.only(left:15,right:15),
           
            decoration: BoxDecoration(color:Colors.white
            , borderRadius: BorderRadius.circular(20)
          ),
          child:Form(child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                  
                        
                        fillColor: Colors.white,
                        filled: true,
                        
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Colors.black,width:5 )),
                  
                      hintText: "Comment",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)),),)),
                
          
 ),

 Positioned(bottom:130,left:310,child: CircleAvatar(backgroundColor: Colors.red,radius:35,child: Icon(Icons.add,color:Colors.white),)),
 Positioned(bottom:220,left:325,child: CircleAvatar(backgroundColor: Colors.red,radius:20,child: Icon(Icons.thumb_up_sharp,color:Colors.white),)),
 Positioned(bottom:270,left:325,child: CircleAvatar(backgroundColor: Colors.red,radius:20,child: Icon(Icons.share,color:Colors.white),))


      
      ]),
     

       ])
     
      //])
    ));
  }
}