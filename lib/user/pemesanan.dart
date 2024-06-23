import 'package:flutter/material.dart';
import './hasiltransaksi.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

// Definisikan data list di luar class dan fungsi main
List<String> daftarKecamatan = [
  'Silahkan pilih',
  'Kecamatan 1',
  'Kecamatan 2',
  'Kecamatan 3',
  'Kecamatan 4',
];

List<String> daftarKecamatan2 = [
  'Kec Welahan : Tugu Muda',
  'Kecamatan 2',
  'Kecamatan 3',
  'Kecamatan 4',
];

class Pemesanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          padding: EdgeInsets.fromLTRB(0, 25, 0.5, 52),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 33),
                padding: EdgeInsets.fromLTRB(33, 17.5, 20, 17.5),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      'Check Out',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 1.3,
                        letterSpacing: 0.2,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(width: 55), // To balance the row alignment
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 32),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://drive.google.com/uc?id=1XWiTVL7Pr8ON9OHY-82GDeKMxXfVCMt-',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 22),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'kalkulator pastel',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  'RP. 52.500',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    letterSpacing: 0.2,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Total: 1',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Divider(color: Color(0xFFCACACA), thickness: 1),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 11, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Detail Orderan',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        letterSpacing: -0.7,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Lokasi COD',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration.collapsed(hintText: ''),
                          items: daftarKecamatan2.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            // Handle dropdown value change here
                          },
                          hint: Text(
                            'Pilih Kecamatan COD',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan catatan',
                    border: InputBorder.none,
                  ),
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                  onChanged: (value) {
                    // Handle input change here
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 9, vertical: 34),
                child: Divider(color: Color(0xFFCACACA), thickness: 1),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(14, 0, 7.5, 92),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Total',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: -0.7,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            'Rp. 52.500',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transaksi()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(210, 226, 129, 10),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 15, 15, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pesan',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            height: 1.6,
                            letterSpacing: 0.2,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pemesanan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Pemesanan(),
    );
  }
}
