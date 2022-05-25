import 'package:explore_jakarta/constant.dart';
import 'package:explore_jakarta/respons/getprofiledao.dart';
import 'package:explore_jakarta/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:explore_jakarta/screen/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:explore_jakarta/respons/logindao.dart';
import 'package:convert/convert.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:async/async.dart';

class ProfileDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileDetails();
  }
}

class _ProfileDetails extends State<ProfileDetails> {
  Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove("token");
  }

  var id = "";
  var name = "";
  var email = "";
  var password = "";
  var tanggallahir = "";
  var handphone = "";
  var kelamin = "";

  @override
  void initState() {
    getProfile();
  }

  Future<GetProfile> getProfile() async {
    print("get profile");
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('token') ?? "";
    var response = await Dio().get('${urlRoot}/profile.php?token=${token}');
    print(response.data);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var profileData = GetProfile.fromJson(jsonDecode(response.data));
      setState(() {
        id = profileData.data!.id!;
        name = profileData.data!.name!;
        email = profileData.data!.email!;
        tanggallahir = profileData.data!.tanggallahir!;
        handphone = profileData.data!.handphone!;
        kelamin = profileData.data!.kelamin!;
      });

      return profileData;
    } else {
      throw Exception('Failed to create album.');
    }
  }

  @override
  Widget build(BuildContext context) {
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
                Icons.home,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              }),
        ],
        leading: IconButton(
          icon: Image.asset('assets/logotmii2.png'),
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text(
                'Profile Details',
                style: GoogleFonts.lato(
                    color: Color.fromARGB(255, 26, 143, 238),
                    fontSize: 26,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 143, 238),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 13, right: 20, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Edit',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            decoration: new BoxDecoration(color: Colors.white),
            height: 180,
            child: Stack(
              children: <Widget>[
                Container(
                    height: 108,
                    width: 101,
                    margin: const EdgeInsets.only(
                        left: 15.0, right: 15, top: 25, bottom: 5),
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(140)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://mitrapost.com/wp-content/uploads/2022/01/Ghozali-E.png',
                      ),
                    )),
                Positioned(
                  bottom: 54,
                  right: 20, //give the values according to your requirement
                  child: Material(
                      color: Colors.blue[900],
                      elevation: 10,
                      borderRadius: BorderRadius.circular(100),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.zoom_out_map,
                          size: 18,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Name ',
                style: GoogleFonts.lato(
                    color: Colors.grey[900],
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37.0),
              child: Text(
                '${name}',
                style: GoogleFonts.lato(
                    color: Colors.grey[600],
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Jenis Kelamin ',
                style: GoogleFonts.lato(
                    color: Colors.grey[900],
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                '${kelamin}',
                style: GoogleFonts.lato(
                    color: Colors.grey[600],
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Tanggal Lahir ',
                style: GoogleFonts.lato(
                    color: Colors.grey[900],
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                '${tanggallahir}',
                style: GoogleFonts.lato(
                    color: Colors.grey[600],
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Divider(),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Icon(Icons.person),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Detail Infromasi',
                style: GoogleFonts.lato(
                    color: Colors.grey[700],
                    fontSize: 17,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 54.0),
              child: Icon(Icons.mail, color: Colors.grey[500]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '${email}',
                style: GoogleFonts.lato(
                    color: Colors.grey[700],
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 54.0),
              child: Icon(Icons.phone, color: Colors.grey[500]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '${email}',
                style: GoogleFonts.lato(
                    color: Colors.grey[700],
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 54.0),
              child: Icon(Icons.home_outlined, color: Colors.grey[500]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '${email}',
                style: GoogleFonts.lato(
                    color: Colors.grey[700],
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        GestureDetector(
          onTap: () {
            print("gesture exit");
            deleteToken();
            Future.delayed(const Duration(milliseconds: 500), () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => welcomepage(),
                ),
              );
            });
          },
          child: Container(
            width: 200,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 2, 59, 248),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () async {
                print("on tap exit");
                final prefs = await SharedPreferences.getInstance();
                await prefs.remove("token");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => welcomepage(),
                  ),
                );
              },
              child: Text(
                "Keluar",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  // @override
  // State<StatefulWidget> createState() {
  // TODO: implement createState

  // }

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   GetProfile();
}
