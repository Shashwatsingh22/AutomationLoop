import 'package:flutter/material.dart';

class Cloud extends StatefulWidget {
  Cloud({Key key}) : super(key: key);

  @override
  _CloudState createState() => _CloudState();
}

class _CloudState extends State<Cloud> {
  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.amber,
    );
  }
}