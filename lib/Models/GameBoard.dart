import 'package:flutter/material.dart';
import 'package:xo_game/Models/Color%20Maneger.dart';
import 'package:xo_game/Models/semboly_Widget.dart';

class Gameboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44),
          color: ColorManeger.WhiteColor,
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  semboltWidget(sembol: 'o',OnTap: (){},),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  semboltWidget(sembol: 'x',OnTap: (){},),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  semboltWidget(sembol: 'o',OnTap: (){},),
                ],
              ),
            ),
            Divider(color: Colors.black, thickness: 2),
            Expanded(
              child: Row(
                children: [
                  semboltWidget(sembol: 'o',OnTap: (){},),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  semboltWidget(sembol: 'x',OnTap: (){},),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  semboltWidget(sembol: 'o',OnTap: (){},),
                ],
              ),
            ),
            Divider(color: Colors.black, thickness: 2),
            Expanded(
              child: Row(
                children: [
                  semboltWidget(sembol: 'o',OnTap: (){},),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  semboltWidget(sembol: 'x',OnTap: (){},),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  semboltWidget(sembol: 'o',OnTap: (){},),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
