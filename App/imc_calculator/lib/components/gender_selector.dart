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
        Container(
          decoration: BoxDecoration(
            color: selectedGender == "Hombre" ?
            AppColors.backgroundComponent : AppColors.backgroundComponentSelected,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              Image.asset("assets/images/male.png", height: 100,),
              SizedBox(height: 8),
              Text("Hombre".toUpperCase(), style: TextStyles.bodyStyle)
              
            ],
          ),
        ),
        Container(
           decoration: BoxDecoration(
            color: selectedGender == "Mujer" ?
            AppColors.backgroundComponent : AppColors.backgroundComponentSelected,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(children: [
              Image.asset("assets/images/female.png", height: 100,),
              SizedBox(height: 8),
              Text("Mujer".toUpperCase(), style: TextStyles.bodyStyle)
              
          ],),
        )
      ],
    );
  }
}