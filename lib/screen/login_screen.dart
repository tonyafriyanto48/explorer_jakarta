import 'package:explore_jakarta/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:explore_jakarta/screen/home_screen.dart';

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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Explore Jakarta'),
        actions: [
          // action button
          // IconButton(
          //   icon: Icon(Icons.campaign),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: Icon(
          //     Icons.account_circle,
          //   ),
          //   onPressed: () {},
          // ),
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
                    // Image.asset(
                    //   'assets/images/accent.png',
                    //   width: 99,
                    //   height: 4,
                    // ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Text(
                              //   "Username",
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.bold, fontSize: 15),
                              // ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              TextField(
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
                              // Text(
                              //   "Password",
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.bold, fontSize: 15),
                              // ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              TextField(
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
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen(),
                        ),
                      ),
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
