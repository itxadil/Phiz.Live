import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class forgotpass extends StatefulWidget {
  @override
  _forgotpassState createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  var _formKey = GlobalKey<FormState>();
  String phone = " ";
  String pass = " ";
  String retype = " ";
  String gcode = " ";
  String vericode = " ";
  TextEditingController phonec = TextEditingController();
  TextEditingController passc = TextEditingController();
  TextEditingController retypec = TextEditingController();
  TextEditingController gcodec = TextEditingController();
  TextEditingController vericodec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
      appBar:AppBar(title:Text("Submit the form",style:TextStyle(fontSize:20,color:Colors.white,fontWeight:FontWeight.w500))),
        body: SingleChildScrollView(child:Column(children: [
          SizedBox(height:20),
      SizedBox(width: 40),
      Text("Forgot Password", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
      SizedBox(height: 30),
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 20, right: 20,),
          margin:EdgeInsets.only(top:20),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Form(
              key: _formKey,
              child: Column(children: [
                TextFormField(
                    //keyboardType:TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 5.0,
                            // borderRadius: BorderRadius.circular(10),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Phone Number",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ))),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 5.0), borderRadius: BorderRadius.circular(10.0)),
                        hintText: "Password",
                        suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end: 8.0), child: Icon(FontAwesomeIcons.eye)),
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ))),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                        hintText: "Re-Type-Password",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 5.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end: 8.0), child: Icon(FontAwesomeIcons.eyeSlash)))),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                        hintText: "Graphic Code",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end: 8.0), child: Icon(Icons.refresh)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 5.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                SizedBox(height: 20),
                Row(children: [
                  Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                    hintText: "Verification Code",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ))),
                  SizedBox(width: 15),
                  Container(width: 150, height: 70, padding: EdgeInsets.only(top: 20, left: 50), decoration: BoxDecoration(color: Colors.red[500], borderRadius: BorderRadius.circular(15.0)), child: Text("Send", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)))
                ])
              ])))
    ])));
  }
}
