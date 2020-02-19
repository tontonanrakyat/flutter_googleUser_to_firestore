import 'dart:io' show Platform;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../services/sv_firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseUser _user;

  HomeScreen(this._user);

  @override
  Widget build(BuildContext context) {
    String _platform;
    if (kIsWeb) {
      _platform = "Platform is WEBSITE";
    } else {
      // Platform .isAndroid | .isIOS | .isFuchsia | .isLinux | .isMacOS | .isWindows
      if (Platform.isAndroid) {
        _platform = "Platform is ANDROID";
      } else if (Platform.isIOS) {
        _platform = "Platform is iOS";
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20.0),
            CircleAvatar(
              backgroundImage: NetworkImage(_user.photoUrl),
              radius: 60.0,
            ),
            SizedBox(height: 20.0),
            Text(_platform),
            SizedBox(height: 20.0),
            Text("Welcome " + _user.displayName),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text("log out"),
              onPressed: () {
                SvFirebaseAuth().logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
