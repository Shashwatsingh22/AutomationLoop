import 'dart:async';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:flutter/material.dart';
import 'package:playbook/navigator.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:7), () => MyNavigator.goToHome(context));
  }

  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
               body :
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 decoration: BoxDecoration(
                 image: DecorationImage(
                  fit: BoxFit.cover,
                 image: AssetImage("asset/intro2.gif"))
                   ),
                  child: 
                    Stack( 
                      children:<Widget>[
                      Center(child: Container(
                         width:MediaQuery.of(context).size.width*0.7,
                         height:MediaQuery.of(context).size.height*0.6,
                         decoration: BoxDecoration(
                     image: DecorationImage(
                     image:AssetImage("asset/Automation.png"), 
                   )
                  ),
                       ),),

                      Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      FadingText('AutomationLoop Loading...',
                      style: TextStyle(
                        color: Color(0xDAFFFFFF),
                        fontWeight:FontWeight.bold,
                      ),
                      ),
                      JumpingDotsProgressIndicator(
                                  fontSize: 40.0,
                                  numberOfDots: 5,
                                  color: Color(0xDAFFFFFF),
                                )
                       
                         ],
                  ),
                    ],
               ),
               ),
               );
    }
}