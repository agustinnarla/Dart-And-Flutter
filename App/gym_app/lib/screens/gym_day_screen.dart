import 'package:flutter/material.dart';
import 'package:gym_app/screens/day1_screen.dart';
import 'package:gym_app/components/day_component.dart';
import 'package:gym_app/screens/day2_screen.dart';
import 'package:gym_app/screens/day3_screen.dart';

class GymDayScreen extends StatefulWidget {
  const GymDayScreen({super.key});

  @override
  State<GymDayScreen> createState() => _GymDayScreen();
}

class _GymDayScreen extends State<GymDayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rutina"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF172112)
      ),
      backgroundColor: Color(0xFF172112),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 10),
            child: Text(
              "Entrenamiento",
              style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ), DayCard(
          title: "Día 1",
          subtitle: "Full body",
          destination: Day1Screen(),
        ),
        DayCard(
          title: "Día 2",
          subtitle: "Full body",
          destination: Day2Screen() ,
        ),
        DayCard(
          title: "Día 3",
          subtitle: "Full body",
          destination: Day3Screen(),
        ),
      ]),
    );
  }
}

