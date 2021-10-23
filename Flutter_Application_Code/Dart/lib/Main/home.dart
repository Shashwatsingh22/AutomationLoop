import 'package:flutter/material.dart';
import 'package:playbook/navigator.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("asset/home.jpeg")
        )
      ),

     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget> [
         FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.6,
          height: MediaQuery.of(context).size.height*0.3,
          decoration: BoxDecoration(
           image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage("asset/local_network.png"
            ,) 
           ),
        ),
        
        child: Container
        (
          color: Colors.black54,
          child: Center(
            child: Text("Local Network",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 40,
                 ),
                 textAlign: TextAlign.center,),
          ),
            
        ),
        ),
        onPressed:() => MyNavigator.goToLocalNetwork(context),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
         FlatButton(
           child: Container(
          width: MediaQuery.of(context).size.width*0.6,
          height: MediaQuery.of(context).size.height*0.3,
          decoration: BoxDecoration(
           image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.6), BlendMode.dstATop),
            image: AssetImage("asset/cloud.png"
            ,) 
           ),
        ),
        
        child: Container
        (
          
          color: Colors.black54,
          child: Center(
            child: Text("Cloud",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 40,
                 ),
                 textAlign: TextAlign.center,),
          ),
            
        ),),
        onPressed: () => MyNavigator.goToCloud(context),
         )
       ],
     ),
    );
  }
}