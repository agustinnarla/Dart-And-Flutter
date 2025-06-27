import 'package:flutter/material.dart';
import 'package:gym_app/components/details_component.dart';

class Day2Screen extends StatefulWidget {
  const Day2Screen({super.key});

  @override
  State<Day2Screen> createState() => _Day2ScreenState();
}

class _Day2ScreenState extends State<Day2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle Rutina"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF172112),
      ),
      backgroundColor: Color(0xFF172112),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 10),
            child: Text(
              "Día 2 - Full body",
              style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          ExercisesCard(
            // title: "Día 1 Full Body",
            excercise: "Press de Banca en smith",
            reps: "3 ser - 12 a 8 rep",
            weight: 2,
          ),
          ExercisesCard(
            //title: "Día 1 Full Body",
            excercise: "Press de Banca en smith",
            reps: "3 ser - 12 a 8 rep",
            weight: 2,
          ),
        ],
      ),
    );
  }
}