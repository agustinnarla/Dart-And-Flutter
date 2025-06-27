import 'package:flutter/material.dart';

class ExercisesCard extends StatelessWidget {
  // final String title;
  final String excercise;
  final String reps;
  final int weight;
  const ExercisesCard({
    super.key,
    //required this.title,
    required this.excercise,
    required this.reps,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   title,
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.w400,
          //     color: Colors.white,
          //   ),
          // ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      excercise,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      reps,
                      style: TextStyle(color: Color(0xFFA1C299), fontSize: 13),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, color: Colors.white),
                color: Color(0xFF2E4229),
                style: IconButton.styleFrom(backgroundColor: Color(0xFF2E4229)),
              ),
              SizedBox(width: 12),
              Text(weight.toString(), style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(width: 12),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove, color: Colors.white),
                color: Color(0xFF2E4229),
                style: IconButton.styleFrom(backgroundColor: Color(0xFF2E4229)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
