import 'package:flutter/material.dart';

class semboltWidget extends StatelessWidget {
  String sembol;
  VoidCallback OnTap;

   semboltWidget({required this.sembol, required this.OnTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:OnTap,
      child: Expanded(

          child:sembol.isEmpty ? Container(): Image.asset('assets/$sembol.png')),
    );
  }
}
