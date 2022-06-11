import 'package:flutter/material.dart';

class VirtualAccount extends StatefulWidget {
  VirtualAccount({Key? key}) : super(key: key);

  @override
  State<VirtualAccount> createState() => _VirtualAccountState();
}

class _VirtualAccountState extends State<VirtualAccount> {
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
                Container(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 252, 255, 49)),
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(10),
                    child: Row(children: [
                      Icon(Icons.warning_amber_rounded),
                      Column(
                        children: [
                          Text("Yuk segera selesaikan pembayaranmu",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Text("Tiket yang tersedia hampir habis."),
                          Text("segera bayar biar nggak kehabisan tiket."),
                        ],
                      )
                    ])),
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 199, 199, 199)),
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(10),
                    child: Row(children: [
                      Column(
                        children: [
                          Text("Batas akhir pembayaranmu",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Text("Sabtu 11 Juli 2022"),
                        ],
                      ),
                      Spacer(),
                      Text("13 : 00"),
                    ])),
                //va
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 199, 199, 199)),
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Virtual Account",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(),
                          Icon(Icons.account_balance_wallet),
                        ],
                      ),
                      Text("Nomor Virtual Account",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text("888001281",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text("Total Pembayaran",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text("Rp 70.000",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ])),
                //upload atau cek
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 199, 199, 199)),
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Row(
                        children: [
                          Text(
                            "Pemesanan baru diteruskan setelah pembayaran",
                          ),
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(
                                40), // fromHeight use double.infinity as width and 40 is the height
                          ),
                          onPressed: () {},
                          child: Text('Upload bukti pembayaran')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(
                                40), // fromHeight use double.infinity as width and 40 is the height
                          ),
                          onPressed: () {},
                          child: Text('Cek status pembayaran'))
                    ])),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(
                          40), // fromHeight use double.infinity as width and 40 is the height
                    ),
                    onPressed: () {},
                    child: Text('Batalkan Pembelian'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
