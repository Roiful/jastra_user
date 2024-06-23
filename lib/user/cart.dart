import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './pemesanan.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int jumlahProdukSatu = 1;
  int jumlahProdukDua = 1;

  void tambahProdukSatu() {
    setState(() {
      jumlahProdukSatu++;
    });
  }

  void kurangiProdukSatu() {
    setState(() {
      if (jumlahProdukSatu > 0) {
        jumlahProdukSatu--;
      }
    });
  }

  void tambahProdukDua() {
    setState(() {
      jumlahProdukDua++;
    });
  }

  void kurangiProdukDua() {
    setState(() {
      if (jumlahProdukDua > 0) {
        jumlahProdukDua--;
      }
    });
  }

  void hapusProduk() {
    setState(() {
      jumlahProdukSatu = 0;
    });
  }

  void hapusProduk2() {
    setState(() {
      jumlahProdukDua = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Column(
          children: [
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Shopping Cart',
                    style: GoogleFonts.getFont(
                      'DM Sans',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      height: 1.3,
                      letterSpacing: 0.2,
                      color: Color(0xFF000000),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      hapusProduk();
                      hapusProduk2();
                    },
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.delete,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 72),
                child: Column(
                  children: [
                    _buildCartItem(
                      'id card',
                      15000,
                      jumlahProdukSatu,
                      tambahProdukSatu,
                      kurangiProdukSatu,
                      hapusProduk,
                      'https://drive.google.com/uc?id=1OsUGc1jVgp_BqmYduXYuZ0CiZDbYJ-J9',
                    ),
                    _buildCartItem(
                      'kalkulator pastel',
                      52500,
                      jumlahProdukDua,
                      tambahProdukDua,
                      kurangiProdukDua,
                      hapusProduk2,
                      'https://drive.google.com/uc?id=1XWiTVL7Pr8ON9OHY-82GDeKMxXfVCMt-',
                    ),
                  ],
                ),
              ),
            ),
            _buildTotalSection(),
            _buildCheckoutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem(
      String productName,
      int productPrice,
      int quantity,
      VoidCallback tambah,
      VoidCallback kurang,
      VoidCallback hapus,
      String imageUrl) {
    return quantity > 0
        ? Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors
                        .grey[200], // Warna abu-abu untuk latar belakang gambar
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'RP. ${productPrice.toString()}',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: kurang,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(Icons.remove),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            quantity.toString(),
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: tambah,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: hapus,
                    child: Icon(Icons.delete, color: Colors.black),
                  ),
                ),
              ],
            ),
          )
        : Container();
  }

  Widget _buildTotalSection() {
    int totalItems = jumlahProdukSatu + jumlahProdukDua;
    int totalPrice = (jumlahProdukSatu * 15000) + (jumlahProdukDua * 52500);

    return totalItems > 0
        ? Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total $totalItems Items',
                  style: GoogleFonts.getFont(
                    'DM Sans',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF000000),
                  ),
                ),
                Text(
                  'RP. $totalPrice',
                  style: GoogleFonts.getFont(
                    'DM Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
          )
        : Container();
  }

  Widget _buildCheckoutButton(BuildContext context) {
    return jumlahProdukSatu > 0 || jumlahProdukDua > 0
        ? Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 32),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pemesanan()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(210, 226, 129, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Proceed to Checkout',
                      style: GoogleFonts.getFont(
                        'DM Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        letterSpacing: 0.2,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          )
        : Container();
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Cart(),
  ));
}
