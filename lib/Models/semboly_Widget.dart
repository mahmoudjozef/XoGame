import 'package:flutter/material.dart';

typedef onTap = void Function(int);

class SymbolWidget extends StatelessWidget {
  String sembol;
  onTap OnTap;
  int index;

  SymbolWidget({
    required this.sembol,
    required this.OnTap,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          OnTap(index);
        },
        child: sembol.isEmpty ? Container() : Image.asset('assets/$sembol.png'),
      ),
    );
  }
}
