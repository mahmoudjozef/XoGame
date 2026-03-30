import 'package:flutter/material.dart';
import 'package:xo_game/Models/Color%20Maneger.dart';
import 'package:xo_game/Models/GameBoard.dart';
class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  static const String routeNamed = 'game';

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorManeger.lightBlue, ColorManeger.DarkBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: ColorManeger.transparentColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SafeArea(
              child: Column(
                spacing: 20,
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      color: ColorManeger.WhiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Player 1', style: TextStyle(fontSize: 20)),
                              Text('Player 2', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Score 0', style: TextStyle(fontSize: 15)),
                              Text('Score 0', style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //todo: game board
                  Gameboard(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
