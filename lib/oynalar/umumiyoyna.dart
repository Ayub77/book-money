import 'package:flutter/material.dart';

class UmumiyOyna extends StatefulWidget {
  const UmumiyOyna({Key? key}) : super(key: key);
  static final String id = "UmumiyOyna";
  @override
  _UmumiyOynaState createState() => _UmumiyOynaState();
}

class _UmumiyOynaState extends State<UmumiyOyna> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Umumiy"),
          bottom: TabBar(
            labelColor: Colors.white,
            
            indicatorColor: Colors.white,
            
            tabs: [
              Tab(
                text: "Bugun",
                
              ),
              Tab(
                text: "Joriy oy",
              )
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
         
          ],
        ),
      ),
    );
  }
}
