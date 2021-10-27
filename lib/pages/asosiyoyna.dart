import 'package:birinchi_loyixa_ishim/oynalar/menyuoyna.dart';
import 'package:birinchi_loyixa_ishim/oynalar/operatsiyaoyna.dart';
import 'package:birinchi_loyixa_ishim/oynalar/qoshishoyna.dart';
import 'package:birinchi_loyixa_ishim/oynalar/statistikaoyna.dart';
import 'package:birinchi_loyixa_ishim/oynalar/umumiyoyna.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

class AsosiyOyna extends StatefulWidget {
  const AsosiyOyna({Key? key}) : super(key: key);
  static final String id = "AsosiyOyna";
  @override
  _AsosiyOynaState createState() => _AsosiyOynaState();
}

class _AsosiyOynaState extends State<AsosiyOyna> {
  String page = 'Umumiy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Builder(
        builder: (context) {
          switch (page) {
            case 'Umumiy':
              return UmumiyOyna();
            case 'Operatsiya':
              return OperatsiyaOyna();
            case 'Statistika':
              return StatistikaOyna();
            case 'Menyu':
              return MenyuOyna();
            default:
              return Container();
          }
        },
      ),


      extendBody: true,
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.grey[300],
        buttonColor: Colors.grey, 
        buttonSelectedColor: Colors.blue[900],
        buttonData: [
          PandaBarButtonData(id: 'Umumiy', icon: Icons.home, title: 'Umumiy'),
          PandaBarButtonData( id: 'Operatsiya',icon: Icons.inventory_rounded,title: 'Operatsiya'),
          PandaBarButtonData(id: 'Statistika',icon: Icons.query_stats_sharp,title: 'Statistika'),
          PandaBarButtonData(id: 'Menyu', icon: Icons.list_outlined,title: 'Menyu'),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {
          Navigator.pushNamed(context, QoshishOyna.id);
        },
      ),
      
    );
  }
}
