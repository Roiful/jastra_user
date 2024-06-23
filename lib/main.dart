import 'package:flutter/material.dart';
import './start.dart';
// import './user/login.dart';
// import './user/pemesanan.dart';
// import './user/sign_up.dart';
// import './user/cart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      home: Start(),
      // routes: {
      //   '/': (context) => Start(),
      //   '/login': (context) => LogIn(),
      //   '/pemesanan': (context) => Pemesanan(),
      //   '/sign_up': (context) => SignUp(),
      //   '/cart': (context) => Cart(),
      // },
    );
  }
}
