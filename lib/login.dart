import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/afterlogin.dart';
import 'package:helloworld/welcome2.dart';
import 'signup.dart';
import 'forgotpassword.dart';


class mywidget extends StatefulWidget {
  @override
  _mywidgetState createState() => _mywidgetState();
}

class _mywidgetState extends State<mywidget> {
  //dbUtil cobj = dbUtil();
  //List<Note> myList;
  var _formKey = GlobalKey<FormState>();
  String _mail = " ";
  String _pass = " ";
  bool _isChecked = false;
  TextEditingController mailcont = TextEditingController();
  TextEditingController passcont = TextEditingController();


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
       
        body:ListView(children: [
          SizedBox(height: 20),
          //Image(image: AssetImage('images/smart.jpeg'), width: 200, height: 100),
          //SizedBox(height: 10),
          ListTile(leading:Icon(Icons.arrow_back,color:Colors.black)),
          SizedBox(height:15),
          Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('Log In',style:TextStyle(color:Colors.black,fontSize:36,fontWeight:FontWeight.w600)),width: MediaQuery.of(context).size.width),
          //SizedBox(width: 20),
          SizedBox(height: 15),
      Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2.9,
        margin: EdgeInsets.only(left:20,right:20),
        decoration: BoxDecoration(color: Color(0xffE5E5E5),),
       
           child:Form(
                  key: _formKey,
                  child: Column(children: [
                   
                    SizedBox(height:20),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: mailcont,
                      validator: (String a) {
                        if (a.length == 0) {
                          return "Please enter email";
                        }
                      },
                      onSaved: (String a) {
                        this._mail = a;
                      },
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w300),
                        fillColor: Colors.white,
                        filled: true,
                       
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5 )),
                      hintText: "none@gmail.com",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)), //boxDecoration
                    ), //TFF
                   
                    SizedBox(height: 20),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        controller: passcont,
                        validator: (String b) {
                          if (b.length < 5) {
                            return "Password must be >=5";
                          }
                        },
                        onSaved: (String a) {
                          this._pass = a;
                        },
                        decoration: InputDecoration(fillColor: Colors.white,filled: true,errorStyle: TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w300),border:OutlineInputBorder(borderSide:BorderSide(color:Colors.black,width:5),borderRadius:BorderRadius.circular(15),),hintStyle:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400),hintText: "12345", suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10),child:Icon(Icons.remove_red_eye_sharp,color: Colors.black,))) //ID
                        ), //TFF
                    SizedBox(height: 20),
                    
                   
                 
                  ]))),
                      
                     
                    SizedBox(height: 20),
                    RawMaterialButton(child:Container(
                      alignment: Alignment.center,
                    width:MediaQuery.of(context).size.width,
                    height:50,
                    //padding: EdgeInsets.only(top:5,left:15),
                    margin:EdgeInsets.only(left:20,right:20),
                    decoration: BoxDecoration(color:Color(0xffED332E),borderRadius:BorderRadius.circular(15)),
                    child: Text("Login", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold))),
                        onPressed: ()  {
                            setState(() {
                              
                          if (_formKey.currentState.validate()){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>welcome()
                             )));
                          }
                            });
                        
                        }), //RB
                    SizedBox(height: 25),
                     RawMaterialButton(
                          child: Text("Forget Password?", style: TextStyle(fontSize: 25, color: Colors.black)),
                          onPressed: () {
                            setState(() {
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>forgotpass()
                            
                         
                         )));
                            });
                          }), //RB
                        SizedBox(height:40),
                     
                            Row(
                              children:[
                                
                            SizedBox(width:50),
                        Text("Don't have an", style: TextStyle(fontSize: 25, color: Colors.black, )),
                        SizedBox(width:5),
                        RawMaterialButton(
                          child: Text("account?", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w900)),
                          onPressed: () {
                            setState(() {
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>signuppage()
                            
                         
                         )));
                            });
                          }), //RB
                              ]),
                        SizedBox(height:30),
                      RawMaterialButton(child:Container(
                        alignment: Alignment.center,
                    width:MediaQuery.of(context).size.width,
                    height:50,
                    padding: EdgeInsets.only(top:3,left:10),
                    margin:EdgeInsets.only(left:20,right:20),
                    decoration: BoxDecoration(color:Color(0xff1D1D1D),borderRadius:BorderRadius.circular(15)),
                    child: Text("Sign Up", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold))),
                        onPressed: () {
                          setState(() {
                         
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>signuppage()
                              )));
                            });
                        }
  ), //RB
                        
                   //column
                  
        ]) //column
        ); //scaffold
  }
}
