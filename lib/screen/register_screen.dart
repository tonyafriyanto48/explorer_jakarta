import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
//tes commit

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

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool rememberMe = false;
// this bool will check rememberMe is checked
  bool showErrorMessage = false;

//for form Validation
  final _formKey = GlobalKey<FormState>();
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
          child: Stack(children: <Widget>[
            // ElevatedButton.icon(
            //   onPressed: () => {LoginPage()},
            //   icon: const Icon(Icons.keyboard_backspace),
            //   label: const Text("Back"),
            //   style: ElevatedButton.styleFrom(
            //       // padding: const EdgeInsets.all(25),
            //       primary: const Color(0xFFFFFFFF),
            //       onPrimary: Colors.blue),
            // ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                SizedBox(height: 40),
                Text(
                  'Register',
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
                Column(children: <Widget>[
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
                          prefixIcon: Icon(Icons.email_outlined),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                          // labelText: "Password",
                          hintText: "Email",
                          // If  you are using latest version of flutter then lable text and hint text shown like this
                          // if you r using flutter less then 1.20.* then maybe this is not working properly
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                        )),
                      ],
                    ),
                  ),
                  Column(children: <Widget>[
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
                            prefixIcon: Icon(Icons.account_circle_outlined),
                            border: myinputborder(),
                            enabledBorder: myinputborder(),
                            focusedBorder: myfocusborder(),
                            // labelText: "Password",
                            hintText: "username",
                            // If  you are using latest version of flutter then lable text and hint text shown like this
                            // if you r using flutter less then 1.20.* then maybe this is not working properly
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                          )),
                        ],
                      ),
                    ),
                    Column(children: <Widget>[
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
                              prefixIcon: Icon(Icons.https_outlined),
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
                      ),
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
                                  prefixIcon: Icon(Icons.lock_clock_outlined),
                                  border: myinputborder(),
                                  enabledBorder: myinputborder(),
                                  focusedBorder: myfocusborder(),
                                  // labelText: "Password",
                                  hintText: "Masukan Ulang Password",
                                  // If  you are using latest version of flutter then lable text and hint text shown like this
                                  // if you r using flutter less then 1.20.* then maybe this is not working properly
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                                )),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 1, right: 10.0, top: 15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: Colors
                                                .grey, //Color(0xfff05945),
                                            offset: const Offset(0, 0),
                                            blurRadius: 5.0),
                                      ],
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
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
                                            color: Colors
                                                .grey, //Color(0xfff05945),
                                            offset: const Offset(0, 0),
                                            blurRadius: 5.0),
                                      ],
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
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
                          SizedBox(height: 10),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Accept Terms & Conditions'),
                                SizedBox(width: 20.0),
                                Checkbox(
                                    focusColor: Colors.lightBlue,
                                    activeColor: Colors.orange,
                                    value: rememberMe,
                                    onChanged: (newValue) {
                                      setState(() => rememberMe = newValue!);
                                    })
                              ]),
                          RaisedButton(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                                  'Daftar',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                // for your form validation
                                if (_formKey.currentState!.validate()) {
                                  // do your success operation here!
                                  // checking for the rememberValue
                                  // and setting the message bool data
                                  if (rememberMe != true)
                                    setState(() => showErrorMessage = true);
                                  else
                                    setState(() => showErrorMessage = false);
                                }
                              })
                        ],
                      ),
                    ]),
                  ]),
                ]),
              ])),
            ),
          ]),
        ));
  }
}
