import 'package:flutter/material.dart';
import './screens/main_screen.dart';
// import 'package:firebase/firebase.dart' as fb;
// import 'package:flutter/foundation.dart';
// import 'dart:io' show Platform;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: MainScreen(),
      ),
    );
  }
}
