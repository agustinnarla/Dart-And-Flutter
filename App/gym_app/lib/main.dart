import 'package:flutter/material.dart';
import 'package:gym_app/screens/gym_day_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // Inicializa Hive
  await Hive.openBox('data'); // Crea una caja para guardar datos

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GymDayScreen(),
    );
  }
}
