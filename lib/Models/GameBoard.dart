import 'package:flutter/material.dart';
import 'package:xo_game/Models/Color%20Maneger.dart';
import 'package:xo_game/Models/semboly_Widget.dart';

class Gameboard extends StatefulWidget {
  final Function(String) onPlayerWin;
  const Gameboard({super.key, required this.onPlayerWin});


  @override
  State<Gameboard> createState() => _GameboardState();
}

class _GameboardState extends State<Gameboard> {
  List<String> sembolList = ['', '', '', '', '', '', '', '', ''];


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
                  SymbolWidget(
                    sembol: sembolList[0],
                    OnTap: onPressed,
                    index: 0,
                  ),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  SymbolWidget(
                    sembol: sembolList[1],
                    OnTap: onPressed,
                    index: 1,
                  ),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  SymbolWidget(
                    sembol: sembolList[2],
                    OnTap: onPressed,
                    index: 2,
                  ),
                ],
              ),
            ),
            Divider(color: Colors.black, thickness: 2),
            Expanded(
              child: Row(
                children: [
                  SymbolWidget(
                    sembol: sembolList[3],
                    OnTap: onPressed,
                    index: 3,
                  ),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  SymbolWidget(
                    sembol: sembolList[4],
                    OnTap: onPressed,
                    index: 4,
                  ),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  SymbolWidget(
                    sembol: sembolList[5],
                    OnTap: onPressed,
                    index: 5,
                  ),
                ],
              ),
            ),
            Divider(color: Colors.black, thickness: 2),
            Expanded(
              child: Row(
                children: [
                  SymbolWidget(
                    sembol: sembolList[6],
                    OnTap: onPressed,
                    index: 6,
                  ),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  SymbolWidget(
                    sembol: sembolList[7],
                    OnTap: onPressed,
                    index: 7,
                  ),
                  VerticalDivider(color: Colors.black, thickness: 2),
                  SymbolWidget(
                    sembol: sembolList[8],
                    OnTap: onPressed,
                    index: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int counter = 0;

  void onPressed(int index) {
    if (sembolList[index].isNotEmpty) {
      return;
    }
    if (counter % 2 == 0) {
      sembolList[index] = 'x';
    } else {
      sembolList[index] = 'o';
    }
    if (checkWin('x')) {
      widget.onPlayerWin('x');
      showResult('player 1 win');
    } else if (checkWin('o')) {
      widget.onPlayerWin('o');
      showResult('player 2 win');
    }
    counter++;
    setState(() {});
  }

  bool checkWin(String sembol) {
    ///check row
    for (int i = 0; i < 9; i+=3) {
      if (sembolList[i] == sembol &&
          sembolList[i + 1] == sembol &&
          sembolList[i + 2] == sembol) {
        return true;
      }
    }

    ///check column
    for (int i = 0; i < 3; i ++) {
      if (sembolList[i] == sembol &&
          sembolList[i + 3] == sembol &&
          sembolList[i + 6] == sembol) {
        return true;
      }
    }

    ///check diagonal
    if (sembolList[0] == sembol &&
        sembolList[4] == sembol &&
        sembolList[8] == sembol) {
      return true;
    }
    if (sembolList[2] == sembol &&
        sembolList[4] == sembol &&
        sembolList[6] == sembol) {
      return true;
    }
    return false;
  }
  void showResult(String message) {

    setState(() {});

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: Text(message, textAlign: TextAlign.center),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                sembolList = List.filled(9, '');
                counter = 0;
              });
            },
            child: Text('play again'),
          ),
        ],
      ),
    );
  }

}
