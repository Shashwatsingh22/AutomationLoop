import 'package:flutter/material.dart';
import 'package:playbook/Main/DetailLB.dart';
import 'Main/home.dart';
import 'Main/local_network.dart';
import 'Main/cloud.dart';
import 'Main/details.dart';
import 'Main/splash.dart';
import 'Main/docker.dart';
import 'Main/hadoop.dart';
import 'Main/webserver.dart';
import 'Main/DetailWebAuth.dart';
import 'Main/DetailWebC.dart';

var num="1";
var method="null";
var num2="1";

void main() { 

 runApp(MaterialApp(
 initialRoute: "/",
 routes :{
 "/": (context) => Splash(),
  "/Home" : (BuildContext context) => Home(),
  "/Local" : (BuildContext context) => LocalNetwork(),
  "/Cloud" : (BuildContext context) => Cloud(),
  "/Detail" : (BuildContext context) => DetailMachine(),
  "/DetailLB" : (BuildContext context) => DetailLB(),
  "/DockerServ" : (BuildContext context) => DockerServices(),
  "/hadoop" : (BuildContext context) => Hadoop(),
  "/webserver" : (BuildContext context) => Webserver(),
  "/detailweb" : (BuildContext context) => DetailWebAuth(),
  "/detailwebC" : (BuildContext context) => DetailWebC(),
 },
 debugShowCheckedModeBanner: false,
 )
 );
}
