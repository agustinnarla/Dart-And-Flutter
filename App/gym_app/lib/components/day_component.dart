import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget destination;
  const DayCard({super.key, required this.title, required this.subtitle, required this.destination});

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.only(left: 16, top: 25, right: 16, bottom: 25),
    child: GestureDetector(
      onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => destination ,
        ),
      );
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
          Row(
            children: [
              // Icono con fondo
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF2E4229),
                ),
                child: Center(
                  child: Icon(
                    Icons.fitness_center,
                    color: Colors.white,
                    size: 34.0,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Color(0xFFA1C299),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
              // Flecha
            ],
          ),
      ],
    ),
  ));
  }
}