import 'package:flutter/material.dart';

class MyNavigator {

  static void goToRoot(BuildContext context) {
    Navigator.pushNamed(context, "/");
  }

  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context,"/Home");
  } 
   static void goToLocalNetwork(BuildContext context) {
    Navigator.pushNamed(context,"/Local");
  }
  static void goToCloud(BuildContext context)
  {
    Navigator.pushNamed(context,"/Cloud");
  }

  static void goToDetail(BuildContext context)
  {
    Navigator.pushNamed(context,"/Detail");
  }

  static void goToDetailLB(BuildContext context)
  {
    Navigator.pushNamed(context,"/DetailLB");
  }

  static void goToProcess(BuildContext context)
  {
    Navigator.pushNamed(context,"/Process");
  }

  static void goToDockerServices(BuildContext context)
  {
    Navigator.pushNamed(context,"/DockerServ");
  }
  
  static void goToHadoop(BuildContext context)
  {
    Navigator.pushNamed(context,"/hadoop");
  }
  
  static void goToWebServer(BuildContext context)
  {
    Navigator.pushNamed(context,"/webserver");
  }

  static void goToDetailWebAuth(BuildContext context)
  {
    Navigator.pushNamed(context,"/detailweb");
  }
  
  static void goToDetailWebC(BuildContext context)
  {
    Navigator.pushNamed(context,"/detailwebC");
  }

}