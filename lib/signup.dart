import 'package:flutter/material.dart';
import 'package:helloworld/home.dart';
import 'package:helloworld/login.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';





class signuppage extends StatefulWidget {
  @override
  _signuppageState createState() => _signuppageState();
}


class _signuppageState extends State<signuppage> {
 //List datetime=[showDatePicker(initialDate: new DateTime.now(), firstDate: new DateTime(1900), lastDate: new DateTime(2100))];
 List dob=['none','22 august, 1994','20 august 194',];
 List regions=['Pakistan','Saudi','Uzbekistan','India'];
 String regvalue='Pakistan';
 List listitems=['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'];
 String chosenvalue='1';
 String gendervalue='Male';
 String dobvalue='22 august, 1994';
 List genderlist=['Male','Female'];
    var _formKey = GlobalKey<FormState>();
  String _name = " ";
  String _phone = " ";
  String _city = " ";
  String _mail = " ";
  TextEditingController nameed = TextEditingController();
  TextEditingController phoneed = TextEditingController();
  TextEditingController cityed = TextEditingController();
  TextEditingController mailed = TextEditingController();
  @override
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
   body:ListView(
     children: [
       SizedBox(height:25),
       Container(decoration: BoxDecoration(color:Color(0xffE5E5E5)),height:50,margin: EdgeInsets.only(left:16),child:Text('Sign Up',style:TextStyle(color:Colors.black,fontSize: 30,fontWeight:FontWeight.w700)),width: MediaQuery.of(context).size.width,),
       SizedBox(height:20),
       CircleAvatar(radius:50,backgroundImage: AssetImage('assets/images/robot.jpg'),),
       SizedBox(height:20),
        Container(
                            width: MediaQuery.of(context).size.width,
                  height:  MediaQuery.of(context).size.height/1.5,
                       padding:EdgeInsets.only(left:10,right:10),
                  margin:EdgeInsets.only(left:10,right:10),
                  decoration: BoxDecoration(color:Color(0xffE5E5E5), borderRadius: BorderRadius.circular(10)),
                  child: Form(
                      key: _formKey,
                      child: Column(children: [
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: phoneed,
                          
                            onSaved: (String a) {
                              this._phone = a;
                            },
                            decoration: InputDecoration( fillColor: Colors.white30,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              hintText: "1888888888888",
                              suffixIcon: Row(children: [
                                SizedBox(width:5),
                                Text('+',style:TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)),
                                DropdownButton(
                                  icon: Icon(Icons.arrow_drop_down ),
                                value: chosenvalue ?? '1',
                                onChanged: (value){
                                  setState(() {
                                    chosenvalue=value;
                                  });
                                },
                                items: listitems.map((newvalue) {
                                  return DropdownMenuItem(value: newvalue,child: Text(newvalue));
                                }).toList(),
                                )
                              ],)
                               ) //ID
                            ), //tff
                        SizedBox(height: 10),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: nameed,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid name";
                              }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                            decoration: InputDecoration(  fillColor: Colors.white30,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              hintText: "Full name",
                              
                              )), //tff
                        SizedBox(height: 10),
                        TextFormField(
                            keyboardType: TextInputType.number,
                            controller: phoneed,
                         
                            onSaved: (String a) {
                              this._phone = a;
                            },
                            decoration: InputDecoration(
                         fillColor: Colors.white30,filled: true,
                              hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),
                              child: DropdownButton(icon: Icon(Icons.arrow_drop_down),value:gendervalue ?? 'Male',onChanged: (mvalue){
                                setState(() {
                                  gendervalue=mvalue;
                                });
                              },
                            items:genderlist.map((myvalue){
                                return DropdownMenuItem(value: myvalue,child:Text(myvalue));
                            }).toList()
                              ,),
                              ),
                              hintText: gendervalue ?? 'Male',
                             
                            )), //tff
                        SizedBox(height: 10),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: cityed,
                            
                            onSaved: (String a) {
                              this._city = a;
                            },
                            decoration: InputDecoration( fillColor: Colors.white30,filled: true, hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                               suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10),child:DropdownButton(value: dobvalue ?? 'none',onChanged: (newvalue){
                                 setState(() {
                                   dobvalue=newvalue;
                                 });
                               },
                              items: dob.map((myval) {
                                return DropdownMenuItem(value:myval,child:Text(myval));
                              }).toList(),
                               )),
                            
                               hintText: dobvalue ?? "DOB",)), //tff
                        SizedBox(height: 20),
                         TextFormField(
                            keyboardType: TextInputType.text,
                            controller: cityed,
                           
                            onSaved: (String a) {
                              this._city = a;
                            },
                            decoration: InputDecoration(  fillColor: Colors.white30,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                               suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10),child:DropdownButton(value: regvalue ?? 'Pakistan',onChanged: (newvalue){
                                 setState(() {
                                   regvalue=newvalue;
                                 });
                               },
                              items: regions.map((myval) {
                                return DropdownMenuItem(value:myval,child:Text(myval));
                              }).toList(),
                               )),
                            
                               hintText: regvalue ?? "Region",)),
                               SizedBox(height:20),
                      Container(
                        width:MediaQuery.of(context).size.width,
                        height:55,
                           alignment: Alignment.center,
                        //padding:EdgeInsets.only(top:4,left:40),
                        margin: EdgeInsets.only(left:30,right:30),
                        decoration:BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
                        child:RawMaterialButton(onPressed: (){setState(() {
                          if(_formKey.currentState.validate()){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => mywidget()));
  }});},child:Text("Sign Up",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 30)))
                      )
                      ]) //col for form
                      ) //form for form
                  ), //container for form
     ],
     )
      );
    
  }
}

