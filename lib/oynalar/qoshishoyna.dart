import 'package:flutter/material.dart';

class QoshishOyna extends StatefulWidget {
  const QoshishOyna({ Key? key }) : super(key: key);
  static final String id = "QoshishOyna";
  @override
  _QoshishOynaState createState() => _QoshishOynaState();
}

class _QoshishOynaState extends State<QoshishOyna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(child: Text("Qoshish"),),
    );
  }
}