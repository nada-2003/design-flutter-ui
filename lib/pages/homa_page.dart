// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:design_ui/widgets/emoji_icon.dart';
import 'package:design_ui/widgets/exerciseTile.dart';
import 'package:design_ui/widgets/main_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "")
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MainText(
                            text: "Hi Jared!",
                            fontsize: 25,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "23 jan,2023",
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //search bar
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue[600]),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainText(fontsize: 18, text: "How do you feel?"),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // smile
                      Column(
                        children: [
                          EmojiFace(
                            emojiFace: "😄",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Smile',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // sad
                      Column(
                        children: [
                          EmojiFace(
                            emojiFace: "😥",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Sad',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // well
                      Column(
                        children: [
                          EmojiFace(
                            emojiFace: "😃",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // excellent
                      Column(
                        children: [
                          EmojiFace(
                            emojiFace: "🤩",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(children: [
                  // exercise heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exercises",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // listview of exercises
                  Expanded(
                    child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: "Speaking Skills",
                          exerciseNumber: 16,
                          Color: Colors.orange,
                        ),
                        ExerciseTile(
                          icon: Icons.person,
                          exerciseName: "Reading Skills",
                          exerciseNumber: 12,
                          Color: Colors.blue,
                        ),
                        ExerciseTile(
                          icon: Icons.star,
                          exerciseName: "Listening Skills",
                          exerciseNumber: 20,
                          Color: Colors.red,
                        )
                      ],
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
