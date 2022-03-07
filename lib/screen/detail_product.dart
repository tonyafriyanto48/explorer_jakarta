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

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) =>  ProfileDetails()),
              );
            }
          ),
        ],
        leading: IconButton(
          icon: Image.asset('assets/logotmii2.png'),
          onPressed: () {},
        ),
      ),
      body: 
      
      Stack(
        
        children: [
           GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            // color: Colors.yellowAccent,
             // tambahkan property berikut
            child: Center(
              
               child: Image.asset('assets/museum indonesia.jpg',
               height: double.infinity,),
            ),
          ),
          Container(
            // color: Colors.blueAccent,
            // height: double.infinity, // tambahkan property berikut
            child: Center(
             child: Image.asset('assets/museum indonesia kk.jpg',
               height: double.infinity,),
            ),
          ),
         
        ],
      ),
    Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: mediaQuery.size.height / 1.5,
            child: FadeAnimation(
              1.2,
              Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     FadeAnimation(
                        1.3,
                        Text(
                          'Muesum Indonesia',
                          style: GoogleFonts.poppins(
                            color: Colors.blueAccent,
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      FadeAnimation(
                        1.4,
                        Text(
                          'Museum ini dibangun tahun 1976 dan diresmikan pada 1980 yang bertepatan dengan peringatan HUT ke-5 Taman Mini "Indonesia Indah" oleh Presiden Soeharto. Museum ini berfungsi sebagai tempat pameran tetap dengan pemaparan benda koleksinya yang terbagi kedalam 3 tema. Lantai 1, bertemakan Bhinneka Tunggal Ika yang menampilkan keanekaragaman pakaian adat dan pakaian pengantin. Lantai 2, bertemakan manusia dan lingkungan sedangkan lantai 3, bertemakan seni dan kriya yang menampilkan hasil seni garapan dan seni ciptaan baru.',
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(51, 51, 51, .54),
                            fontSize: 18,
                            height: 1.4,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => JelajahPage()));
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
                        const SizedBox(
                        height: 20,
                      ),
                                FadeAnimation(
                        1.5,
                        Container(
                          height: 60,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 19, 138, 235),
                                Color.fromARGB(255, 56, 53, 251),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: (Colors.grey[300]!),
                                blurRadius: 10,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '\RP. 15',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    '.000',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Beli Tiket',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}