import 'package:flutter/material.dart';

class StatistikaOyna extends StatefulWidget {
  const StatistikaOyna({ Key? key }) : super(key: key);
    static final String id = "StatistikaOyna";
  @override
  _StatistikaOynaState createState() => _StatistikaOynaState();
}

class _StatistikaOynaState extends State<StatistikaOyna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text("Statistika"),)
    );
  }
}