import 'package:birinchi_loyixa_ishim/oynalar/operatsiyaoyna.dart';
import 'package:birinchi_loyixa_ishim/oynalar/qoshishoyna.dart';
import 'package:birinchi_loyixa_ishim/oynalar/umumiyoyna.dart';
import 'package:birinchi_loyixa_ishim/pages/asosiyoyna.dart';
import 'package:birinchi_loyixa_ishim/pages/intropage.dart';
import 'package:birinchi_loyixa_ishim/pages/kirishoynasi.dart';
import 'package:birinchi_loyixa_ishim/pages/loginpage.dart';
import 'package:birinchi_loyixa_ishim/pages/royxat.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{

  await Hive.initFlutter();
  await Hive.openBox("kashalok");


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Kirsh(),
      routes: {
        LoginPage.id: (context)=>LoginPage(),
        Royxat.id: (context)=>Royxat(),
        AsosiyOyna.id: (context)=>AsosiyOyna(),
        Intro.id: (context)=>Intro(),
        UmumiyOyna.id: (context)=>UmumiyOyna(),
        OperatsiyaOyna.id: (context)=>OperatsiyaOyna(),
        QoshishOyna.id: (context)=>QoshishOyna(),

      },
    );
  }
}

