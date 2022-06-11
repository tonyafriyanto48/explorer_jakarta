import 'package:explore_jakarta/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:explore_jakarta/screen/jelajah_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:explore_jakarta/screen/profile_screen.dart';
import 'package:explore_jakarta/fade_adnimation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:explore_jakarta/constant.dart';


class TiketMasukPage extends StatelessWidget {
  const TiketMasukPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: new Text('Explore Jakarta'),
        actions: [
          IconButton(
            icon: Icon(Icons.campaign),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                Icons.account_circle,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileDetails()),
                );
              }),
        ],
        leading: IconButton(
          icon: Image.asset('assets/explore.png'),
          onPressed: () {},
        ),
      ),
      body:  
      ListView(children: [
        Container(
            width: MediaQuery.of(context).size.width * 6,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Card(
              child: Image.asset(
                'assets/latar1.png',
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(10),
            ),
          ),
        Container(
          height: 50,
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Container(
                height: 30,
                width: 240,
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.all(2),
                color: Colors.blue,
                child: 
                Text("Pemesanan Tiket ",
                    style: TextStyle(color: Colors.white, fontSize: 25)
                    ), 
              ),
             ],
          ),
        ),
        SizedBox(height: 10),
          Card (
          margin: EdgeInsets.all(5),
          color: Colors.blue,
          shadowColor: Colors.blueGrey,
          elevation: 20,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text(
          "Tiket Yang Tersedia",
          style: TextStyle(color: Colors.white,fontSize: 20),
        ),
      )
      ]
      )
      ),
          SizedBox(height: 10),

      ListTile(
      leading: Icon(Icons.fiber_manual_record, ),
      title: Text('Batas Pengujung Berdasakan Auran PPKM Yang Berlaku'),
    ),
     // ignore: unnecessary_new
     new Container(
  // decoration: new BoxDecoration(color: AppColors.hoBlue),
  child: Padding(
    padding: EdgeInsets.all(20.0),
    child: new Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0.0, 20.0,20.0),
                          child: Column(
                            children: <Widget>[
                               Card(
                                 color: Color.fromARGB(255, 66, 66, 66),
                                    elevation: 5.0,
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child:
                                      Text("Tiket Masuk" ,
                                      style: TextStyle(color: Colors.white,fontSize: 10),
                                              ),
                                    ),
                                  ),
                                  Card(
                                 color: Color.fromARGB(255, 66, 66, 66),
                                    elevation: 10.0,
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child:
                                      Text("Tasuk" ,
                                      style: TextStyle(color: Colors.white,fontSize: 10),
                                              ),
                                    ),
                                  ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: "Tanggal Masuk",
                                  hintText: "example@mail.com",
                                ),
                                autofocus: true,
                              ),
                             TextField(
                                decoration: InputDecoration(
                                  labelText: "Jenis Kendaraan",
                                  hintText: "example@mail.com",
                                ),
                                autofocus: true,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: "Jumlah Orang",
                                  hintText: "example@mail.com",
                                ),
                                autofocus: true,
                              ),
                              SizedBox(
                                width: double.infinity,
                                // height: double.infinity,
                                child: new RaisedButton(
                                  // color: AppColors.hoBlue,
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Raleway',
                                      fontSize: 22.0,
                                    ),
                                  ),
                                  onPressed: () => print('Sign In'),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    )),
  ),
)
    ]
    )
    );
  }
}