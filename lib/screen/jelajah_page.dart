import 'package:explore_jakarta/screen/detail_product.dart';
import 'package:flutter/material.dart';
import 'package:explore_jakarta/screen/home_screen.dart';
import 'package:explore_jakarta/screen/login_screen.dart';
import 'package:explore_jakarta/screen/register_screen.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:explore_jakarta/screen/profile_screen.dart';

class JelajahPage extends StatefulWidget {
  const JelajahPage();

  @override
  _JelajahPageState createState() => _JelajahPageState();
}

class _JelajahPageState extends State<JelajahPage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// class JelajahPage extends StatefulWidget {
//   const JelajahPage({Key? key}) : super(key: key);

//   @override
//   _JelajahPage createState() => _JelajahPage();
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
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
            icon: Image.asset('assets/logotmii2.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileDetails()),
              );
            }),
      ),

      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
                  child: Column(children: <Widget>[
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 30,
                width: 380,
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.all(2),
                color: Colors.blue,
                child: Text("Museum",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ],
          ),
        ),
        Container(
          height: 580,
          child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10.0),
              childAspectRatio: 8.0 / 9.0,
              children: <Widget>[
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/museum indonesia.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Museum Indonesia',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'RP. 15.000,~',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 16, 110, 250)),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage()));
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/keprajuritan.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Museum Keprajuritan',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'RP. 4.000,~',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 16, 110, 250)),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/museum prangkok.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Museum Prangkok',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'RP. 5.000,~',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 16, 110, 250)),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/museum pusaka.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Museum Pusaka',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'RP. 10.000,~',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 16, 110, 250)),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "Tidak memliki akun? ",
            //   style: TextStyle(fontSize: (16)),
            // ),
            GestureDetector(
                onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    ),
                child: Text(
                  "Selengkapnya",
                  style: TextStyle(
                    fontSize: (16),
                    color: Color(0xFF0880F0),
                  ),
                )),
          ],
        ),
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 30,
                width: 380,
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.all(2),
                color: Colors.blue,
                child: Text("Flora Fauna",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ],
          ),
        ),
        Container(
          height: 580,
          child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10.0),
              childAspectRatio: 8.0 / 9.0,
              children: <Widget>[
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/tman kaktus.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Taman Kaktus',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/tamn burung.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Taman Burung',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/taman apotik hidup.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Taman Apotik \nHidup',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/taman prasasti apec.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 18.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Taman Prasasti \nApec',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "Tidak memliki akun? ",
            //   style: TextStyle(fontSize: (16)),
            // ),
            GestureDetector(
                onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    ),
                child: Text(
                  "Selengkapnya",
                  style: TextStyle(
                    fontSize: (16),
                    color: Color(0xFF0880F0),
                  ),
                )),
          ],
        ),
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 30,
                width: 380,
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.all(2),
                color: Colors.blue,
                child: Text("Rekreasi",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ],
          ),
        ),
        Container(
          height: 580,
          child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10.0),
              childAspectRatio: 8.0 / 9.0,
              children: <Widget>[
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/snowbay waterpark.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Snowbay Waterpark',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Tutup',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 143, 25, 25)),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/istana anak.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Istana Anak \nIndonesia',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/kereta tanggung.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Kereta Gantung',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'RP. 50.000,~',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 16, 110, 250)),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('assets/assets/Keong-Emas-TMII.jpg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Theater IMAX Keong Emas',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'RP. 30.000 - Rp.50.000',
                              style: TextStyle(
                                  fontFamily: "Rowdies",
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 16, 110, 250)),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Text(
                                  "Informasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "Tidak memliki akun? ",
            //   style: TextStyle(fontSize: (16)),
            // ),
            GestureDetector(
                onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    ),
                child: Text(
                  "Selengkapnya",
                  style: TextStyle(
                    fontSize: (16),
                    color: Color(0xFF0880F0),
                  ),
                )),
          ],
        ),
      ])))),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 30,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pin_drop,
              size: 30,
            ),
            label: 'Jelajah',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
              size: 30,
            ),
            label: 'Pembelian',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history_sharp,
              size: 30,
            ),
            label: 'Riwayat',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
