import 'package:flutter/material.dart';
import 'package:superhero_app_api/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;

  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalle")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.network(
                superhero.url,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment(0, -0.5),
              ),
            ),
            Text(superhero.name, style: TextStyle(fontSize: 29)),
            Text(
              superhero.powerStatsResponse.combat,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(height: double.parse(superhero.powerStatsResponse.combat), width: 20, color: Colors.red),
                      Text("Combat")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(height: double.parse(superhero.powerStatsResponse.durability), width: 20, color: Colors.red),
                      Text("Durability")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
