import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/screens/Login/Hello.dart';
import 'package:whatsapp/screens/homepage.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (!snapshot.hasData) {
            return Hello();
          }
          return HomePage();
        }));
  }
}
