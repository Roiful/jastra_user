import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscurePassword = true;
  bool _isObscureConfirmPassword = true;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _isPasswordMatch = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(210, 226, 129, 10),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 19, 0, 0),
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
                              style: GoogleFonts.getFont(
                                'Montserrat',
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
                                'Sign Up',
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 36,
                                  height: 1.2,
                                  color: Color(0xFF000000),
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
                                    width: 80, // Lebar gambar
                                    height: 300, // Tinggi gambar
                                    errorBuilder: (BuildContext context,
                                        Object error, StackTrace? stackTrace) {
                                      return Icon(Icons
                                          .error); // Menampilkan ikon error jika gambar gagal dimuat
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 4),
                                    height: 40,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText:
                                            'Enter your username or email',
                                        hintStyle: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(210, 226, 129, 10),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
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
                                  child: Image.network(
                                    'https://drive.google.com/uc?id=1HNYOhB0d5T3xQdUEH3N7CZ4eTC5r4mfV',
                                    width: 100, // Lebar gambar
                                    height: 300, // Tinggi gambar
                                    errorBuilder: (BuildContext context,
                                        Object error, StackTrace? stackTrace) {
                                      return Icon(Icons
                                          .error); // Menampilkan ikon error jika gambar gagal dimuat
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 4),
                                    child: TextField(
                                      controller: _passwordController,
                                      obscureText: _isObscurePassword,
                                      decoration: InputDecoration(
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(210, 226, 129, 10),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isObscurePassword = !_isObscurePassword;
                                    });
                                  },
                                  child: Icon(
                                    _isObscurePassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                )
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
                                  child: Image.network(
                                    'https://drive.google.com/uc?id=1HNYOhB0d5T3xQdUEH3N7CZ4eTC5r4mfV',
                                    width: 100, // Lebar gambar
                                    height: 300, // Tinggi gambar
                                    errorBuilder: (BuildContext context,
                                        Object error, StackTrace? stackTrace) {
                                      return Icon(Icons
                                          .error); // Menampilkan ikon error jika gambar gagal dimuat
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 4),
                                    child: TextField(
                                      controller: _confirmPasswordController,
                                      obscureText: _isObscureConfirmPassword,
                                      decoration: InputDecoration(
                                        hintText: 'Confirm Password',
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(210, 226, 129, 10),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isObscureConfirmPassword =
                                          !_isObscureConfirmPassword;
                                    });
                                  },
                                  child: Icon(
                                    _isObscureConfirmPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            ),
                          ),
                          if (!_isPasswordMatch)
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Text(
                                'Password and Confirm Password must match',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          Container(
                            margin: EdgeInsets.fromLTRB(1, 0, 1, 38),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  text: 'By clicking the ',
                                  style: GoogleFonts.getFont(
                                    'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFF676767),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Register',
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
                                      text:
                                          ' button, you agree to the public offer',
                                      style: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFF676767),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // New Register Button
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                    210, 226, 129, 10), // Button color
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 24), // Padding
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      4), // Square corners
                                ),
                              ),
                              onPressed: () {
                                if (_passwordController.text ==
                                    _confirmPasswordController.text) {
                                  print('Register button pressed');
                                } else {
                                  setState(() {
                                    _isPasswordMatch = false;
                                  });
                                }
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already Have an Account',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF575757),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Login(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5.8, 0, 0, 4),
                                      child: Text(
                                        'Login Here',
                                        style: GoogleFonts.getFont(
                                          'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          decoration: TextDecoration.underline,
                                          color:
                                              Color.fromARGB(210, 226, 129, 10),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUp(),
  ));
}
