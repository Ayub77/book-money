import 'package:birinchi_loyixa_ishim/pages/intropage.dart';
import 'package:birinchi_loyixa_ishim/pages/royxat.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
    static final String id = "LoginPage";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

    final fishcontroller = TextEditingController();
    final logincontroller = TextEditingController();
    final parolcontroller = TextEditingController();

  _islogin(){

    String fish = fishcontroller.text.toString().trim();
    String login = logincontroller.text.toString().trim();
    String parol = parolcontroller.text.toString().trim();


    if(fish == "" || login=="" || parol==""){
    Fluttertoast.showToast(
        msg: "Malumotlarni to'ldiring",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey[400],
        textColor: Colors.white,
        fontSize: 16.0);  
    }else{
      Navigator.pop(context);
      Navigator.pushNamed(context, Intro.id);
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
                  height: 200,//MediaQuery.of(context).size.height * 0.36,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/login.png"),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: fishcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "F.I.Sh",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
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
                  keyboardType: TextInputType.text,
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
                          "Ro'yxatdan o'tish",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035),
                        ),
                      ),
                    )
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Avvaldan hisobingiz bormi?",style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),),
                                  SizedBox(width: 10,),
                                   GestureDetector(
                                     onTap: (){
                                       Navigator.pushNamed(context, Royxat.id);
                                     },
                                     child: Text("Kirish",style: TextStyle(
                              color: Colors.green,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022),),
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
