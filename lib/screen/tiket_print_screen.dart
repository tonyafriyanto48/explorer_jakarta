import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TiketPrintScreen extends StatefulWidget {
  TiketPrintScreen({Key? key}) : super(key: key);

  @override
  State<TiketPrintScreen> createState() => _TiketPrintScreenState();
}

class _TiketPrintScreenState extends State<TiketPrintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Explore Jakarta'),
        actions: [],
        leading: IconButton(
          icon: Image.asset('assets/logotmii2.png'),
          onPressed: () {},
        ),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/museum indonesia kk.jpg',
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.blue,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Pembelian Berhasil",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                      ),
                    ),
                  ],
                ),
                Container(
                    width: double.infinity,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "Tiket Anda",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "#123456789",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "Waktu terkirim",
                        ),
                        Text(
                          "Sabtu 11 Juni 2022",
                        ),
                        QrImage(
                          data: "1234567890",
                          version: QrVersions.auto,
                          size: 200.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Nama pengirim",
                            ),
                            Spacer(),
                            Text(
                              "Hario Budiharjo",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Jumlah tiket",
                            ),
                            Spacer(),
                            Text(
                              "2 Tiket",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Kendaraan",
                            ),
                            Spacer(),
                            Text(
                              "Mobil",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Pembayaran",
                            ),
                            Spacer(),
                            Text(
                              "Rp 70.000",
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
