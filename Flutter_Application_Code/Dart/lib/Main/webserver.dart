import 'package:flutter/material.dart';
import 'package:playbook/navigator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../main.dart';

class Webserver extends StatefulWidget {
  Webserver({Key key}) : super(key : key);

  @override
  _WebserverState createState() => _WebserverState();
}

class _WebserverState extends State<Webserver> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
               image: AssetImage("asset/home.jpeg"))
               ),
               child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),

          FlatButton(
            child:Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.5), BlendMode.dstATop),
                  image: AssetImage(
                    "asset/webserver.jpg",
                  )),
            ),

            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text(
                  "Default Config Webserver",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      ),
                       textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          onPressed: () {
                        Alert(
        context: context,
        title: "INPUT",
        content: TextField(
               onChanged: (varl){
                 num=varl;
               },
               decoration: InputDecoration(
                icon: Icon(Icons.desktop_windows),
                labelText: 'Number of Machines',
              ),
            ),
        buttons: [
          DialogButton(
            color: Colors.black54,
            onPressed: ()
            {
              method="DefultWeb";
              MyNavigator.goToDetail(context); 
            },
            
            child: Text(
              "Enter",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
                    },
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          
          FlatButton(
            child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.5), BlendMode.dstATop),
                  image: AssetImage(
                    "asset/webserver.jpg",
                  )),
            ),
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text(
                  "Config Webserver With Auth",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                 ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          onPressed:() {
                        Alert(
        context: context,
        title: "INPUT",
        content: Column(
          children: <Widget>[
            TextField(
              onChanged: (varl){
                 num=varl;
               },
              decoration: InputDecoration(
                icon: Icon(Icons.desktop_windows),
                labelText: 'Number Of Machines',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            color: Colors.black54,
            onPressed: () => MyNavigator.goToDetailWebAuth(context),
            child: Text(
              "Enter",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
                    },
          ),

          FlatButton(
            child: Container(
              margin: EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.5), BlendMode.dstATop),
                  image: AssetImage(
                    "asset/webserver.jpg",
                  )),
            ),
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text(
                  "Customize Config Webserver",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                 ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          onPressed:() {
                        Alert(
        context: context,
        title: "INPUT",
        content: Column(
          children: <Widget>[
            TextField(
              onChanged: (varl){
                 num=varl;
               },
              decoration: InputDecoration(
                icon: Icon(Icons.desktop_windows),
                labelText: 'Number Of Machines',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            color: Colors.black54,
            onPressed: () => MyNavigator.goToDetailWebC(context),
            child: Text(
              "Enter",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
                    },
          ),
          
        ],),

        ),
    );
  }
}