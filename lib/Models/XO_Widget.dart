import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ScreensDoc/Game_Screen.dart';

class XoWidget extends StatelessWidget {
  String semboly;
  VoidCallback onPressed;

  XoWidget({required this.semboly, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,

      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset('assets/$semboly.png'),
      ),
    );
  }
}
