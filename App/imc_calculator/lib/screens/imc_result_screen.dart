import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;

  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarResult(),
      body: bodyResult(context),
    );
  }

  Padding bodyResult(BuildContext context) {
    double fixedHeight = height / 100;
    double imcResult = weight / (fixedHeight * fixedHeight);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            "Tu resultado",
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      getTitleByImc(imcResult),
                      style: TextStyle(
                        color: getColorByImc(imcResult),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      imcResult.toStringAsFixed(2),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(getDescriptionByImc(imcResult), textAlign: TextAlign.center,style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              child: Text("Finalizar", style: TextStyles.bodyStyle),
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      title: Text("Resultado"),
    );
  }
  
  Color getColorByImc(double imcResult ) {
    return switch(imcResult) {
      < 18.6 => Colors.blue,
      < 24.9 => Colors.green,
      < 29.9 => Colors.orange,
      _ => Colors.red
    };
  }

  String getTitleByImc(double imcResult){
    return switch(imcResult){
      < 18.6 => "Bajo",
      < 24.9 => " Normal",
      < 29.9 => " Alto",
      _ => " Altisimo"
    };
  }

  String getDescriptionByImc(double imcResult){
    return switch(imcResult){
      < 18.6 => "Estas en un porcentaje bajo con respecto al imc",
      < 24.9 => " Estas en un porcentaje normal con respecto al imc",
      < 29.9 => " Estas en un porcentaje alto con respecto al imc",
      _ => " Estas en un porcentaje muy alto con respecto al imc"
    };
  }
}
