import 'package:flutter/material.dart';
import 'package:gym_app/components/weight_selector_component.dart';

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
              WeightSelectorComponent(),
            ],
          ),
        ],
      ),
    );
  }

  
}
