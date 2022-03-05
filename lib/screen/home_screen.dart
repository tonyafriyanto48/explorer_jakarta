import 'package:flutter/material.dart';
import 'package:explore_jakarta/screen/jelajah_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:line_icons/line_icons.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
    'assets/Banners1.jpg',
    'assets/Banners2.jpg',
    'assets/Banners3.jpg',
    'assets/Banners4.jpg',
    'assets/Banners5.jpg',
    'assets/Banners6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
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
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Image.asset('assets/logotmii2.png'),
          onPressed: () {},
        ),
      ),

      body: ListView(children: [
        Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Card(
              child: Image.asset(
                'assets/latar1.png',
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              // margin: EdgeInsets.all(10),
            ),
          ),
          Container(
            //alignment: Alignment.centerRight,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.40,
              //right: 20
            ),

            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.width * 0.6,

            child: Column(
              children: [
                // SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home,
                          ),
                          iconSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JelajahPage()));
                          },
                          icon: Icon(
                            Icons.place,
                          ),
                          iconSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Jelajah",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.campaign,
                          ),
                          iconSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Informasi",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.receipt,
                          ),
                          iconSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tiket",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                        //mainAxisAlignment: MainAxisAlignment,
                        children: [
                          Container(
                            //margin: EdgeInsets.al,
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.width * 0.15,
                            decoration: new BoxDecoration(
                              color: Colors.blue,
                              //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                              borderRadius: new BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu_book,
                              ),
                              iconSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Museum",
                            style: TextStyle(
                                fontFamily: "Rowdies",
                                fontWeight: FontWeight.w200,
                                color: Colors.grey),
                          )
                        ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.beach_access,
                          ),
                          iconSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rekreasi",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          //boxShadow: [new BoxShadow(blurRadius: 0.5)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.park,
                          ),
                          iconSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Flora Fauna",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                  ],
                )
              ],
            ),
          ),
        ]),
        Container(
          height: 30,
          width: 380,
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.all(2),
          color: Colors.blue,
          child: Text("Mengenai TMII",
              style: TextStyle(color: Colors.white, fontSize: 25)),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Text(
              "Taman Mini Indonesia Indah TMII merupakan suatu kawasan taman wisata bertema budaya Indonesia di Jakarta Timur. /nTaman ini merupakan rangkuman kebudayaan bangsa Indonesia, yang mencakup berbagai aspek kehidupan sehari-hari masyarakat 33 provinsi Indonesia pada tahun 1975 yang ditampilkan dalam anjungan daerah berarsitektur tradisional serta menampilkan aneka busana tarian dan tradisi daerah TMII memiliki logo yang pada intinya terdiri atas huruf TMII,Singkatan dari Taman Mini Indonesia Indah Sedangkan maskotnya berupa tokoh wayang Hanoman yang dinamakan NITRA Anjani Putra Maskot Taman Mini Indonesia Indah ini diresmikan penggunaannya oleh Ibu Tien Soeharto, bertepatan dengan dwi windu usia TMII pada tahun 1991Taman Mini Indonesia Indah TMII merupakan suatu kawasan taman wisata bertema budaya Indonesia di Jakarta Timur Taman ini merupakan rangkuman kebudayaan bangsa Indonesia, yang mencakup berbagai aspek kehidupan sehari-hari masyarakat 33 provinsi Indonesia pada tahun 1975 yang ditampilkan dalam anjungan daerah berarsitektur tradisional serta menampilkan aneka busana tarian dan tradisi daerah TMII memiliki logo yang pada intinya terdiri atas huruf TMII,Singkatan dari Taman Mini Indonesia Indah Sedangkan maskotnya berupa tokoh wayang Hanoman yang dinamakan NITRA Anjani Putra Maskot Taman Mini Indonesia Indah ini diresmikan penggunaannya oleh Ibu Tien Soeharto, bertepatan dengan dwi windu usia TMII pada tahun 1991",
              style: TextStyle(fontSize: 16)),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homescreen()));
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(5),
            // alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Selengkapnya ...',
                  style: TextStyle(
                      color: Color(0xFF0880F0),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  initialPage: 0,
                  autoPlay: true,
                  reverse: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  onPageChanged: (index, reason) => _currentIndex = index,
                  // pauseAutoPlayOnTouch: Duration(seconds: 10),
                  // scrollDirection: Axis.horizontal,
                ),
                items: imageList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          //shadowColor: Colors.grey,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Image.asset(
                              item,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Container(
                height: 30,
                width: 380,
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.all(2),
                color: Colors.blue,
                child: Text("Sejarah",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(2),
                child: Text(
                    "Ibu Tien Soeharto menyampaikan gagasan pembangunan Miniatur Indonesia pada rapat pengurus YHK di Jl Cendana No 8 Jakarta Bentuk dan sifat isian proyek berupa bangunan utama bercorak rumah-rumah adat yang dilengkapi dengan pergelaran kesenian kekayaan flora fau-na dan benda budaya lain dari masing-masing daerah yang ada di Indonesia Gagasan itu dilandasi oleh suatu keinginan untuk membangkitkan kebanggaan dan rasa cinta terhadap bangsa dan tanah air serta untuk memperkenalkan Indonesia kepada bangsa-bangsa lain di dunia",
                    style: TextStyle(fontSize: 16)),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.all(5),
                  // alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Selengkapnya ...',
                        style: TextStyle(
                            color: Color(0xFF0880F0),
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),

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
