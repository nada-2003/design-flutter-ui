// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int exerciseNumber;
  final Color;
   ExerciseTile({
    required this.icon,
    required this.exerciseName,
    required this.exerciseNumber,
    this.Color
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom:12.0),
      child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Color,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         exerciseName,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        exerciseNumber.toString() + " Exercises",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          )),
    );
  }
}
