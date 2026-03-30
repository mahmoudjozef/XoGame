import 'package:flutter/material.dart';
import 'package:xo_game/ScreensDoc/Game_Screen.dart';
import 'package:xo_game/ScreensDoc/StartGame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
      StartGame.routeNamed:(context)=>const StartGame(),
        GameScreen.routeNamed:(context)=>const GameScreen(),
    },
    );
  }
}