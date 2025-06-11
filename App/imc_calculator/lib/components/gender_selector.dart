import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenederSelector extends StatefulWidget {
  const GenederSelector({super.key});

  @override
  State<GenederSelector> createState() => _GenederSelectorState();
}

class _GenederSelectorState extends State<GenederSelector> {
  // Cremos una Variable nulable para el estado
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expande
        Expanded(
          // Para que detecte el click
          child: GestureDetector(
            onTap: () {
              // Siempre q se modifique la ui se llama 
              setState(() {
                selectedGender = "Hombre";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == "Hombre" 
                  ? AppColors.backgroundComponentSelected
                  : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png", height: 100,),
                      SizedBox(height: 8),
                      Text("Hombre".toUpperCase(), style: TextStyles.bodyStyle)
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // Expande
        Expanded(
           // Para que detecte el click
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Mujer";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 8),
              child: Container(
                 decoration: BoxDecoration(
                  color: selectedGender == "Mujer" 
                  ?  AppColors.backgroundComponentSelected 
                  : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(children: [
                      Image.asset("assets/images/female.png", height: 100,),
                      SizedBox(height: 8),
                      Text("Mujer".toUpperCase(), style: TextStyles.bodyStyle)
                      
                  ],),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}