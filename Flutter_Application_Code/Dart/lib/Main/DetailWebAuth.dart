import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playbook/navigator.dart';
import 'package:http/http.dart' as http;
import '../main.dart';


class DetailWebAuth extends StatefulWidget {
  DetailWebAuth({Key key}) : super(key: key);

  @override
  _DetailWebAuthState createState() => _DetailWebAuthState();
}

int count = 1;
var large = new List();
String str ="Give Machine 1 Detail's";
String user="", pass="";

final _ipControler = TextEditingController();
final _userControler = TextEditingController();
final _passControler = TextEditingController();

final _userAuthControler = TextEditingController();
final _passAuthControler = TextEditingController();


String str1 = "Give Auth Details !!";

void SettingUp(var x, var y,var z)
{
   var small = new List();
   small.add(x);
   small.add(y);
   small.add(z);
   large.add(small);
   _ipControler.clear();
   _userControler.clear();
   _passControler.clear();
   if(count>int.parse(num))
   {
     str="Swipe Left To Give Extra Info";
   }
   else
   {
     str="Give Machine $count Detail's";
   }
}

var webdata;

Execute(var list,var u, var p) async
{
  count++;
  var url="http://192.168.43.49/cgi-bin/back.py?medthod=webAuth&detail=$list&user=$u&pass=$p";
  var response = await http.get(url);
  webdata=response.body;
}


class _DetailWebAuthState extends State<DetailWebAuth> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
             child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child:Column(
           children: <Widget>[
//---------------First Pannel -------------                 
                 Container(
          height: MediaQuery.of(context).size.height*0.7,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("asset/shell.gif"))
                 ),
                 child:SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(children: <Widget>[
//-----Take input pannel for the LB Devices ------------
                   Container(
               margin: EdgeInsets.fromLTRB(0,50,0,20),
               height: MediaQuery.of(context).size.height*0.57,
               width: MediaQuery.of(context).size.width*0.95,
               decoration: BoxDecoration(
               border: Border.all(
                   color: Colors.green[600],
                   width: 5,
                   ),
               ),
                 child: Column(
                   children: <Widget>[
                   Container(
                     margin: EdgeInsets.all(15),
                     child: Text(str,
                          style:GoogleFonts.slackey(
                           color: Colors.green,
                           fontSize: 20,
                           decoration: TextDecoration.none
                          ),),
                   ),
                   
                  Row(children: <Widget>[
                    Container(margin: EdgeInsets.fromLTRB(10,40,0,20),
                     child: Text("IP : ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.68,
                        height: MediaQuery.of(context).size.width*0.15,
                        child: TextField(
                          controller: _ipControler,
                           autofocus: true,
                           showCursor: true,
                           cursorWidth: 2,
                           cursorColor: Color(0xDAFFFFFF),
                           style: GoogleFonts.slackey(
                             height: 1,
                             color: Color(0xDAFFFFFF),
                             fontSize:20, 
                           ),
                           decoration: InputDecoration(
                            border:
                             OutlineInputBorder(
                              borderRadius:BorderRadius.circular(40),
                               ),
                               hintText: "192.168.102.100",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      )
                  ],),
                  Row(children: <Widget>[
                    Container(margin: EdgeInsets.fromLTRB(10,40,0,20),
                     child: Text("Username : ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.5,
                        height: MediaQuery.of(context).size.width*0.2,
                        child: TextField(
                           controller: _userControler,
                           autofocus: true,
                           showCursor: true,
                           cursorWidth: 2,
                           cursorColor: Color(0xDAFFFFFF),
                           style: GoogleFonts.slackey(
                             height: 1,
                             color: Color(0xDAFFFFFF),
                             fontSize:20, 
                           ),
                           decoration: InputDecoration(
                            border:
                             OutlineInputBorder(
                              borderRadius:BorderRadius.circular(40),
                               ),
                               hintText: "root",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      )
                  ],),
                  Row(children: <Widget>[
                    Container(margin: EdgeInsets.fromLTRB(10,40,0,20),
                     child: Text("Password : ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.5,
                        height: MediaQuery.of(context).size.width*0.15,
                       // color: Colors.amber,
                        child: TextField(
                           controller: _passControler,
                           autofocus: true,
                           showCursor: true,
                           cursorWidth: 2,
                           cursorColor: Color(0xDAFFFFFF),
                           style: GoogleFonts.slackey(
                             height: 1,
                             color: Color(0xDAFFFFFF),
                             fontSize:20, 
                           ),
                           decoration: InputDecoration(
                            border:
                             OutlineInputBorder(
                              borderRadius:BorderRadius.circular(40),
                               ),
                               hintText: "toor",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      )
                  ],),

                      
                  FlatButton(
                      child: Icon(
                       Icons.add_circle,
                       color: Colors.green,
                       size: 50,
                      ),
                      onPressed: ()
                      {
                       setState(() {
                        count++;
                        SettingUp(_ipControler.text,_userControler.text,_passControler.text);
                       });
                        
                      },
                  ),
                 ],
                 ),

               ),

// 2nd Pannel For the Auth Detail-----

               Container(
                 child: Column(children: [
                   Container(
               margin: EdgeInsets.fromLTRB(20,50,0,20),
               height: MediaQuery.of(context).size.height*0.4,
               width: MediaQuery.of(context).size.width*0.95,
               decoration: BoxDecoration(
               border: Border.all(
                   color: Colors.green[600],
                   width: 5,
                   ),
               ),
                 child: Column(
                   children: <Widget>[
                   Container(
                     margin: EdgeInsets.all(15),
                     child: Text(str1,
                          style:GoogleFonts.slackey(
                           color: Colors.green,
                           fontSize: 20,
                           decoration: TextDecoration.none
                          ),),
                   ),
                   
                  Row(children: <Widget>[
                    Container(margin: EdgeInsets.fromLTRB(10,40,0,20),
                     child: Text("User ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.68,
                        height: MediaQuery.of(context).size.width*0.15,
                        child: TextField(
                          controller: _userAuthControler,
                           autofocus: true,
                           showCursor: true,
                           cursorWidth: 2,
                           cursorColor: Color(0xDAFFFFFF),
                           style: GoogleFonts.slackey(
                             height: 1,
                             color: Color(0xDAFFFFFF),
                             fontSize:20, 
                           ),
                           decoration: InputDecoration(
                            border:
                             OutlineInputBorder(
                              borderRadius:BorderRadius.circular(40),
                               ),
                               hintText: "Jhon Doe",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      )
                  ],),
                  Row(children: <Widget>[
                    Container(margin: EdgeInsets.fromLTRB(10,40,0,20),
                     child: Text("Pass ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.68,
                        height: MediaQuery.of(context).size.width*0.15,
                        child: TextField(
                          controller: _passAuthControler,
                           autofocus: true,
                           showCursor: true,
                           cursorWidth: 2,
                           cursorColor: Color(0xDAFFFFFF),
                           style: GoogleFonts.slackey(
                             height: 1,
                             color: Color(0xDAFFFFFF),
                             fontSize:20, 
                           ),
                           decoration: InputDecoration(
                            border:
                             OutlineInputBorder(
                              borderRadius:BorderRadius.circular(40),
                               ),
                               hintText: "#@123",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      )
                  ],),
                  FlatButton(
                      child: Icon(
                       Icons.add_circle,
                       color: Colors.green,
                       size: 50,
                      ),
                      onPressed: ()
                      {
                       setState(() {

                         user=_userAuthControler.text;
                         _userAuthControler.clear();
                         pass= _passAuthControler.text;
                         _passAuthControler.clear();
                        
                        str1="Press Excute Button !!";
                       });
                        
                      },
                  ),
                 ],
                 ),),


                Card(
                            color: Colors.transparent,
                            child:
                            FlatButton(
                              onPressed: () {
                               Execute(large,user,pass);
                               
                               large.clear();
                               count=1;
                              },
                            child: Container(
                              width: 120,
                              height:45,
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  width:2,
                                  color:Color(0xABFFFFFF),
                                ),  
                              ),
                              child: Center (child: Text("Execute",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 20,
                          ),),
                            ))
                          )
                          ),

                 ],),
               )


                 ],),),
                 ),
// =================Output Screen=======
           Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.8,
                        color: Colors.black,
                        child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child:Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Card(
                            color: Colors.transparent,
                            child: FlatButton(
                              onPressed: () => MyNavigator.goToLocalNetwork(context),
                            
                            child: Container(
                              width: 120,
                              height:45,
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  width:2,
                                  color:Color(0xABFFFFFF),
                                ),  
                              ),
                              child: Center ( child:Text("< Back",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 20,
                          ),),
                            ))
                          )
                          ), 
                          
                              Container(
                                    child:Center(
                                      child:Text(webdata ?? "Pull Up To See the Execution !!",
                                  style:GoogleFonts.slackey(
                                  color: Colors.green,
                                  fontSize:15,
                                  ),),
                             ),),
                          
         ],),
                          ),
                          ),)


           ]
                              )                 )
      )));
  }
}