import 'package:flutter/material.dart';

class OperatsiyaOyna extends StatefulWidget {
  const OperatsiyaOyna({Key? key}) : super(key: key);
  static final String id = "OperatsiyaOyna";
  @override
  _OperatsiyaOynaState createState() => _OperatsiyaOynaState();
}

class _OperatsiyaOynaState extends State<OperatsiyaOyna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Operatsiya",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.line_weight))
          ],
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: MediaQuery.of(context).size.height * 0.2),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/plus.png"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Operatsiyalar ro'yxati bo'sh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueGrey[700]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "xarajatlar va daromadlarni kuzatib borish uchun tranzaktsiyalarni qo'shing",style: TextStyle(fontSize: 16),),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.green[700],
                    borderRadius: BorderRadius.circular(15)),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "YANGI OPERATSIYA",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
