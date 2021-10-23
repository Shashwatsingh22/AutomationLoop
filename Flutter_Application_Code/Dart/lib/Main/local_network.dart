import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:playbook/navigator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../main.dart';

class LocalNetwork extends StatefulWidget {
  LocalNetwork({Key key}) : super(key: key);

  @override
  _LocalNetworkState createState() => _LocalNetworkState();
}



class _LocalNetworkState extends State<LocalNetwork> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                  "Docker",
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
          onPressed: () => MyNavigator.goToDockerServices(context),
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
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                  image: AssetImage(
                    "asset/loadbalancer.png",
                  )),
            ),
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text(
                  "Load Balancer",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
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
            TextField(
              onChanged: (varl){
                 num2=varl;
               },
              decoration: InputDecoration(
                icon: Icon(Icons.desktop_windows),
                labelText: 'Number of APP Machines',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            color: Colors.black54,
            onPressed: () => MyNavigator.goToDetailLB(context),
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
                      Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                  image: AssetImage(
                    "asset/hadoop.png",
                  )),
            ),
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text(
                  "Hadoop",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                 ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          onPressed: () => MyNavigator.goToHadoop(context),
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
                      Colors.grey.withOpacity(0.6), BlendMode.dstATop),
                  image: AssetImage(
                    "asset/webserver.jpg",
                  )),
            ),
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text(
                  "WebServer",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                 ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          onPressed: () => MyNavigator.goToWebServer(context),
          ),

        ],),

        ),
    ));
  }
}
