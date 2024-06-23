import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './sign_up.dart';
import './home.dart';
import './forgot.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscurePassword = true;
  TextEditingController _passwordController = TextEditingController();

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
                                'lOGIN',
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
                                    errorBuilder: (BuildContext context,
                                        Object error, StackTrace? stackTrace) {
                                      return Icon(Icons.error);
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
                                    errorBuilder: (BuildContext context,
                                        Object error, StackTrace? stackTrace) {
                                      return Icon(Icons.error);
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
                                SizedBox(width: 20),
                              ],
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => home(),
                                  ),
                                );
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(1, 0, 1, 38),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Forgot()),
                                  );
                                },
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Forgot Password',
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight
                                          .bold, // Mengubah teks menjadi bold
                                      fontSize: 17,
                                      height: 1.3,
                                      color: Color.fromARGB(210, 226, 129, 10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 40),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '- OR Continue with -',
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF575757),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 185,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xFFDCC8E9),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Color(0xFFFCF3F6),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              // Handle action when Google sign-in button is pressed
                                            },
                                            child: Container(
                                              width: 54,
                                              height: 54,
                                              padding: EdgeInsets.all(14),
                                              child: Image.network(
                                                'https://drive.google.com/uc?id=19_NknzR-06OWa9Qp_f3JRsf9BIatCqeK',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
                                          builder: (context) => SignUp(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5.8, 0, 0, 4),
                                      child: Text(
                                        'Sign Up here',
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
