import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double value;
  final Function(double) onHeightChange;
  const HeightSelector({super.key, required this.value, required this.onHeightChange});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text("Altura".toUpperCase(), style: TextStyles.bodyStyle),
          ),
          Text("${widget.value.toStringAsFixed(0)} cm", style: TextStyle(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),),
          Slider(value: widget.value, onChanged: (newHeight) {
            widget.onHeightChange(newHeight);
          },
          min: 150,
          max: 220,
          // Saltos q puedo dar
          divisions: 70,
          // Etiqueta para cuando arrastro
          label: "${widget.value}",
          activeColor: AppColors.primary)
        ],),
      ),
    );
  }
}