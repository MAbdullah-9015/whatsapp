import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:whatsapp/components/Lets_start.dart';
import 'package:whatsapp/components/Logo.dart';
import 'package:whatsapp/components/terms_and_conditions.dart';

class BlurImagePageScaffold extends StatelessWidget {
  const BlurImagePageScaffold({Key? key, this.ImagePath, this.body})
      : super(key: key);
  final ImagePath;
  final body;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(image: AssetImage(ImagePath), fit: BoxFit.fill),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: Colors.black.withOpacity(0),
          child: Container(
            color: Colors.black.withOpacity(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: body,
            ),
          ),
        ),
      ),
    );
  }
}
