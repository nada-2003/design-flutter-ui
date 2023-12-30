import 'package:flutter/material.dart';

class EmojiFace extends StatelessWidget {
  final String emojiFace;
  const EmojiFace({
    required this.emojiFace
    
    });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
        child: Text( emojiFace , style: TextStyle(fontSize: 23),)
        );
  }
}
