import 'package:flutter/material.dart';
// ignore: must_be_immutable
class MainText extends StatelessWidget {
  final String text;
  final double fontsize;
   MainText({
    required this.fontsize,
    required this.text 
});

  @override
  Widget build(BuildContext context) {
    return Text(text ,
     style: TextStyle(
      color: Colors.white , fontSize: fontsize  , fontWeight: FontWeight.bold),);
  }
}