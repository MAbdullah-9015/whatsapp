import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/components/BlurImagePageScaffold.dart';
import 'package:whatsapp/components/Lets_start.dart';
import 'package:whatsapp/components/terms_and_conditions.dart';
import 'package:whatsapp/screens/Login/EditNumber.dart';

import '../../components/Logo.dart';

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurImagePageScaffold(
      ImagePath: 'images/bg.jpg',
      body: [
        Logo(
          height: 150.0,
          width: 150.0,
          radius: 50.0,
        ),
        Text("Hello",
            style:
                TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 60)),
        Column(
          children: [
            Text("WhatsApp is a Cross-platform",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20)),
            Text("mobile messaging with friends",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20)),
            Text("all over the world",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20))
          ],
        ),
        TermsAndCondition(
          onPressed: () {},
        ),
        LetsStart(
          onPressed: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => EditNumber()));
          },
        ),
      ],
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return BlurImagePageScaffold(
//       ImagePath: 'images/gb.jpg',
//       body: [
//         Logo(),
//         Text("Hello"),
//         Column(
//           children: [
//             Text("Whatsapp is a Cross-Platform"),
//             Text("Mobile Messaging with Friends"),
//             Text("All over the World"),
//           ],
//         ),
//         TermsAndCondition(),
//         LetsStart()
//       ],
//     );
//   }
// }
