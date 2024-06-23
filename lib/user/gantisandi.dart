import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import './katalog.dart';
import './pesan.dart';

// ignore: duplicate_import

import './profil.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChangePassword(),
  ));
}

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  int _selectedIndex = 0;
  bool _obscureOldPassword = true;
  bool _obscureNewPassword = true;

  void sendMessage(BuildContext context) async {
    final phoneNumber = '+628979842121'; // Ganti dengan nomor WhatsApp tujuan
    final message = 'Permintaan ganti password :: ${DateTime.now()}\n'
        'Email atau username: ${_emailController.text}\n'
        'Password Lama: ${_oldPasswordController.text}\n'
        'Password Baru: ${_newPasswordController.text}';

    String url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch WhatsApp')),
      );
    }
  }

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFD6810A),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 19, 0, 0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(29, 0, 29, 19),
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
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 206.7,
                              child: Text(
                                'JASTRA',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                  height: 0.7,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 40),
                        ],
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          minHeight: 1000), // Atur tinggi sesuai kebutuhan
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(29, 30, 29, 136),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 28),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Change Pass',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 36,
                                    height: 1.2,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(1, 0, 1, 38),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Send Me Your ',
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFF676767),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Email or Username',
                                        style: GoogleFonts.getFont(
                                          'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color:
                                              Color.fromARGB(210, 226, 129, 10),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' to change your',
                                        style: GoogleFonts.getFont(
                                          'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xFF676767),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Pass!!!',
                                        style: GoogleFonts.getFont(
                                          'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color:
                                              Color.fromARGB(210, 226, 129, 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFA8A8A9)),
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFF3F3F3),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                    height: 24,
                                    child: Image.network(
                                      'https://drive.google.com/uc?id=1emc7zn-9W4ZDcsv7BHhF89On8kZt7rbX',
                                      errorBuilder: (BuildContext context,
                                          Object error,
                                          StackTrace? stackTrace) {
                                        return Icon(Icons.error);
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 4),
                                      height: 40,
                                      child: TextFormField(
                                        controller: _emailController,
                                        decoration: InputDecoration(
                                          hintText: 'Email atau Username',
                                          hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFFD6810A),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your email';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFA8A8A9)),
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFF3F3F3),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                    height: 24,
                                    child:
                                        Icon(Icons.lock, color: Colors.black),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 4),
                                      height: 40,
                                      child: TextFormField(
                                        controller: _oldPasswordController,
                                        decoration: InputDecoration(
                                          hintText: 'Password Lama',
                                          hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFFD6810A),
                                          ),
                                          border: InputBorder.none,
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _obscureOldPassword =
                                                    !_obscureOldPassword;
                                              });
                                            },
                                            child: Icon(
                                              _obscureOldPassword
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        obscureText: _obscureOldPassword,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your old password';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFA8A8A9)),
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFF3F3F3),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                    height: 24,
                                    child: Icon(Icons.lock,
                                        color: Color.fromARGB(255, 7, 7, 7)),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 4),
                                      height: 40,
                                      child: TextFormField(
                                        controller: _newPasswordController,
                                        decoration: InputDecoration(
                                          hintText: 'Password Baru',
                                          hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFFD6810A),
                                          ),
                                          border: InputBorder.none,
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _obscureNewPassword =
                                                    !_obscureNewPassword;
                                              });
                                            },
                                            child: Icon(
                                              _obscureNewPassword
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        obscureText: _obscureNewPassword,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your new password';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 20, bottom: 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFD6810A),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    print('Form is valid, sending message...');
                                    sendMessage(context);
                                  }
                                },
                                child: Text(
                                  'Send',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
      ),
    );
  }
}
