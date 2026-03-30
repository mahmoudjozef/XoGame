import 'package:flutter/material.dart';
import 'package:xo_game/Models/Color%20Maneger.dart';
import 'package:xo_game/Models/XO_Widget.dart';

import 'Game_Screen.dart';

class StartGame extends StatelessWidget {
  const StartGame({super.key});

  static const String routeNamed = '/';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/BackGround.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: ColorManeger.transparentColor,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Pick who goes first?',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    XoWidget(
                      semboly: 'x',
                      onPressed: () {
                        Navigator.pushNamed(context, GameScreen.routeNamed);
                      },
                    ),
                    XoWidget(
                      semboly: 'o',
                      onPressed: () {
                        Navigator.pushNamed(context, GameScreen.routeNamed);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
