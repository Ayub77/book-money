import 'package:birinchi_loyixa_ishim/pages/asosiyoyna.dart';
import 'package:birinchi_loyixa_ishim/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Royxat extends StatefulWidget {
  const Royxat({Key? key}) : super(key: key);
  static final String id = "Royxat";
  @override
  _RoyxatState createState() => _RoyxatState();
}

class _RoyxatState extends State<Royxat> {
  final logincontroller = TextEditingController();

  final parolcontroller = TextEditingController();

  _islogin() {
    String login = logincontroller.text.toString().trim();
    String parol = parolcontroller.text.toString().trim();

    if (login == "" || parol == "") {
      Fluttertoast.showToast(
          msg: "Malumotlarni to'ldiring",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey[400],
          textColor: Colors.white,
          fontSize: 16.0);
    }else{
      Navigator.pushReplacementNamed(context, AsosiyOyna.id);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.36,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/login2.png"),
                        fit: BoxFit.scaleDown,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                TextField(
                  controller: logincontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Login",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: parolcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Parol",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.09,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.029)),
                    child: FlatButton(
                      onPressed: () {
                        _islogin();
                      },
                      child: Center(
                        child: Text(
                          "Kirish",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Hisobingiz yo'qmi?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Ro'yxatdan o'tish",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
