import 'package:bismillah/user/hasiltransaksi.dart';
import 'package:flutter/material.dart';
import './katalog.dart';

// ignore: duplicate_import
import './hasiltransaksi.dart';
import './pesan.dart';
import './pusatbantuan.dart';
import './login.dart';
import './gantisandi.dart';
import './profilku.dart';

void main() {
  runApp(MaterialApp(
    home: Profil(),
  ));
}

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Katalog()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pesan()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profil()),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Profil',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor:
                        Colors.grey, // Set the background color to grey
                    child: Icon(Icons.person,
                        size: 30,
                        color: Colors
                            .black), // Optionally set the icon color to white for better visibility
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Titipers',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Afrida',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Example navigation to home page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profilku()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.orange, width: 1.5),
                      ),
                      backgroundColor: Colors.white,
                      foregroundColor:
                          const Color.fromARGB(255, 0, 0, 0), // Text color
                    ),
                    child: Text('Lihat profil'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Example navigation to home page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePassword()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.orange, width: 1.5),
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.orange, // Text color
              ),
              child: ListTile(
                title: Text(
                  'Ganti Kata Sandi',
                  style: TextStyle(
                    fontSize: 18, // Set the font size
                    fontWeight: FontWeight.bold, // Make the text bold
                    color: Colors.black, // Set the text color
                  ),
                ),
                trailing: Icon(Icons.lock,
                    color: const Color.fromARGB(255, 46, 46, 46),
                    size: 24), // Set the icon color and size
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Example navigation to home page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Transaksi()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.orange, width: 1.5),
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.orange, // Text color
              ),
              child: ListTile(
                title: Text(
                  'Pesanan',
                  style: TextStyle(
                    fontSize: 18, // Set the font size
                    fontWeight: FontWeight.bold, // Make the text bold
                    color: Colors.black, // Set the text color
                  ),
                ),
                trailing: Icon(Icons.shopping_cart,
                    color: const Color.fromARGB(255, 46, 46, 46),
                    size: 24), // Set the icon color and size
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Example navigation to home page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpCenter()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.orange, width: 1.5),
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.orange, // Text color
              ),
              child: ListTile(
                title: Text(
                  'Pusat Bantuan',
                  style: TextStyle(
                    fontSize: 18, // Set the font size
                    fontWeight: FontWeight.bold, // Make the text bold
                    color: Colors.black, // Set the text color
                  ),
                ),
                trailing: Icon(Icons.help,
                    color: const Color.fromARGB(255, 46, 46, 46),
                    size: 24), // Set the icon color and size
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Example navigation to login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.orange, width: 1.5),
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.orange, // Text color
              ),
              child: ListTile(
                title: Text(
                  'Keluar',
                  style: TextStyle(
                    fontSize: 18, // Set the font size
                    fontWeight: FontWeight.bold, // Make the text bold
                    color: Colors.black, // Set the text color
                  ),
                ),
                trailing: Icon(Icons.exit_to_app,
                    color: const Color.fromARGB(255, 46, 46, 46),
                    size: 24), // Set the icon color and size
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.storage_sharp),
            label: 'Katalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Color.fromARGB(210, 226, 129, 10),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
