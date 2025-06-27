import 'package:flutter/material.dart';
import 'package:gym_app/components/details_component.dart';

class Day1Screen extends StatefulWidget {
  const Day1Screen({super.key});

  @override
  State<Day1Screen> createState() => _Day1ScreenState();
}

class _Day1ScreenState extends State<Day1Screen> {
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
              "Día 1 - Full body",
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
