import 'dart:convert';

import 'package:birinchi_loyixa_ishim/pages/asosiyoyna.dart';
import 'package:birinchi_loyixa_ishim/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Kirsh extends StatefulWidget {
  const Kirsh({Key? key}) : super(key: key);

  @override
  _KirshState createState() => _KirshState();
}

class _KirshState extends State<Kirsh> {
  var box = Hive.box("kashalok");

  Future _loadingData() async {
    await Future.delayed(Duration(seconds: 1));

    var row = box.get('login');
      var data = "false";
      if(row!=null){
        data = row;
      }
    bool tek = jsonDecode(data);
    if(tek){
      Navigator.pushReplacementNamed(context, AsosiyOyna.id);
    }else{
      Navigator.pushReplacementNamed(context, LoginPage.id);
    }
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadingData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Foydali Kashalok",
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    )
    );
  }

 
}
