import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: CupertinoButton.filled(
              child: Text('Logout'),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.push(
                    context, CupertinoPageRoute(builder: (context) => MyApp()));
              })),
    );
  }
}
