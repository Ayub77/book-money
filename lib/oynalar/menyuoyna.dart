import 'package:flutter/material.dart';

class MenyuOyna extends StatefulWidget {
  const MenyuOyna({ Key? key }) : super(key: key);
   static final String id = "MenyuOyna";
  @override
  _MenyuOynaState createState() => _MenyuOynaState();
}

class _MenyuOynaState extends State<MenyuOyna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text("Menyu"),)
    );
  }
}