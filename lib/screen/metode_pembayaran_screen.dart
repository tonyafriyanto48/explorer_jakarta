import 'package:flutter/material.dart';

class StateMetodePembayaran extends State<MetodePembayaran> {
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
                      // margin: EdgeInsets.all(6),
                      // padding: EdgeInsets.all(2),
                      color: Colors.blue,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Metode Pembayaran",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromARGB(255, 48, 52, 59))),
                    child: Column(
                      children: [
                        Row(
                          children: [Text("Payment"), Spacer()],
                        ),
                        Row(
                          children: [
                            Text("All transactions are secure and encrypted."),
                            Spacer()
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 48, 52, 59))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Transfer BNI"),
                                  Spacer(),
                                  Icon(Icons.chevron_right),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(
                          40), // fromHeight use double.infinity as width and 40 is the height
                    ),
                    onPressed: () {},
                    child: Text('Kembali ke pembayaran'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MetodePembayaran extends StatefulWidget {
  final state = StateMetodePembayaran();

  @override
  State<StatefulWidget> createState() => state;
}

                        // Row(
                        //   children: [
                        //     Text("Transfer BNI"),
                        //     Spacer(),
                        //     Icon(Icons.chevron_right),
                        //   ],
                        // )
