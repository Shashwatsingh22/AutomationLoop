import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../navigator.dart';
import '../main.dart';


class DockerServices extends StatefulWidget {
  DockerServices({Key key}) : super(key: key);

  @override
  _DockerServicesState createState() => _DockerServicesState();
}


class _DockerServicesState extends State<DockerServices> {
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
                    "asset/docker.jpg",
                  )),
            ),
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text(
                  "Docker Config",
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
              method="dockerConfig";
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
                    "asset/docker.jpg",
                  )),
            ),
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text(
                  "Docker Config as WebServer",
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
                labelText: 'Number Of LB Machines',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            color: Colors.black54,
            onPressed: () 
            {
              method="dockerConfigAsWeb";
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
          
        ],),

        ),
    );
  }
}