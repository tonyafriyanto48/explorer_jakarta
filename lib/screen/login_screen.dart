import 'package:explore_jakarta/constant.dart';
import 'package:explore_jakarta/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:explore_jakarta/screen/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:explore_jakarta/respons/logindao.dart';
import 'package:convert/convert.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:async/async.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 223, 235, 247),
        width: 3,
      ));
}

OutlineInputBorder myfocusborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 206, 233, 245),
        width: 3,
      ));
}



  // print(response.statusCode);
  // if (response.statusCode == 200) {
  //   // If the server did return a 201 CREATED response,
  //   // then parse the JSON.
  //   var data = logindao.fromJson(jsonDecode(response.body));
  //   print("token ${data.token}");
  //   print("token ${data.status}");
  //   return data;
  // } else {
  //   // If the server did not return a 201 CREATED response,
  //   // then throw an exception.
  //   throw Exception('Failed to create album.');
  // }
// }

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String email = "";
  String password = "";
  Future<logindao>? _logindao;

  Future<void> setToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
  }

Future<logindao> sendData(String email, String password) async {
    var formData = FormData.fromMap({
      'email': email,
      'pass': password,
    });
    var response =
        await Dio().post('${urlRoot}/masuk.php', data: formData);
    print(response.data);
    print(response.statusCode);
        if (response.statusCode == 200) {
          // If the server did return a 201 CREATED response,
          // then parse the JSON.
          var data = logindao.fromJson(jsonDecode(response.data));
    print("token ${data.token}");
    print("token ${data.status}");
    setToken(data.token ?? "");

      return data;
       } 
       else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
         throw Exception('Failed to create album.');
  }
  }

   FutureBuilder<logindao> buildFutureBuilder() {
    return FutureBuilder<logindao>(
      future: _logindao,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //return Text(snapshot.data!.title);
          if (snapshot.data!.token != null) {
            print("masuk sini pindah route");
           Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Homescreen(),
                                  ),
                                );
          }
        } else if (snapshot.hasError) {
          print("error snapshit");
        }
        

        return const CircularProgressIndicator();
      },
    );
  }

   _onCustomAnimationAlertPressed(context) {
    Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      alertAnimation: fadeAlertAnimation,
    ).show();
  }

   Widget fadeAlertAnimation(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),

    );
  }

   _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.error,
      title: "Login Gagal",
      desc: "silahkan masukan ulang email atau kata sandi anda",
      buttons: [
        DialogButton(
          child: Text(
            "Oke",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
             Navigator.of(context).pop();
          },
          width: 120,
        )
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Explore Jakarta'),
        actions: [
        ],
        leading: IconButton(
          icon: Image.asset('assets/logotmii2.png'),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40),
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                          // fontStyle: FontStyle.reguler,
                          fontFamily: 'Open Sans',
                          fontSize: 40),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                     Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                                        TextField(
                                                          onChanged: (text) {
                                                            email = text;
                                                          },
                                  decoration: InputDecoration(
                                prefixIcon: Icon(Icons.people),
                                border: myinputborder(),
                                enabledBorder: myinputborder(),
                                focusedBorder: myfocusborder(),
                                // labelText: "Password",
                                hintText: "Email",
                                // If  you are using latest version of flutter then lable text and hint text shown like this
                                // if you r using flutter less then 1.20.* then maybe this is not working properly
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                                    TextField(
                                                      onChanged: (text) {
                                                        password = text;
                                                      },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    border: myinputborder(),
                                    enabledBorder: myinputborder(),
                                    focusedBorder: myfocusborder(),
                                    // labelText: "Password",
                                    hintText: "Password",
                                    // If  you are using latest version of flutter then lable text and hint text shown like this
                                    // if you r using flutter less then 1.20.* then maybe this is not working properly
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 1, right: 10.0, top: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.grey, //Color(0xfff05945),
                                      offset: const Offset(0, 0),
                                      blurRadius: 5.0),
                                ],
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12.0)),
                            width: 120,
                            height: 50,
                            child: Material(
                              borderRadius: BorderRadius.circular(12.0),
                              child: InkWell(
                                onTap: () {
                                  print("facebook tapped");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/facebook.png",
                                          fit: BoxFit.cover),
                                      SizedBox(
                                        width: 2.0,
                                      ),
                                      Text("facebook")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 2.0, right: 1.0, top: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.grey, //Color(0xfff05945),
                                      offset: const Offset(0, 0),
                                      blurRadius: 5.0),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0)),
                            width: 100,
                            height: 50,
                            child: Material(
                              borderRadius: BorderRadius.circular(18.0),
                              child: InkWell(
                                onTap: () {
                                  print("google tapped");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/google.png",
                                          fit: BoxFit.cover),
                                      Text("Google")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        var response = sendData(email,password);
                        _logindao = response;


                        response.then((result) {
                          if ((result.token ?? "") != "") {

                           Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Homescreen(),
                                  ),
                                );
                          } else {
                            _onAlertButtonPressed(context);
                          }
                      });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey.shade200,
                                offset: Offset(2, 4),
                                blurRadius: 5,
                                spreadRadius: 2)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF6277FA),
                              Color(0xFF08AAEB),
                            ],
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Tidak memliki akun? ",
                          style: TextStyle(fontSize: (16)),
                        ),
                        GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                  ),
                                ),
                            child: Text(
                              "Daftar",
                              style: TextStyle(
                                fontSize: (16),
                                color: Color(0xFF0880F0),
                              ),
                            )),
                      ],
                    ),

                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
