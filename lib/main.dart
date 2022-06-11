import 'package:explore_jakarta/screen/login_screen.dart';
import 'package:explore_jakarta/screen/welcome_screen.dart';
import 'package:explore_jakarta/widget/stategird.dart';
import 'package:flutter/material.dart';
import 'package:explore_jakarta/screen/welcome_screen.dart';
import 'package:explore_jakarta/screen/profile_screen.dart';
import 'package:explore_jakarta/screen/detail_product.dart';
import 'package:explore_jakarta/screen/tiket_masuk.dart';


void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TiketMasukPage(),
    );
  }
}
