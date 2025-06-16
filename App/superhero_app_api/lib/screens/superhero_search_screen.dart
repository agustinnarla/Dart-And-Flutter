import 'package:flutter/material.dart';
import 'package:superhero_app_api/data/model/superhero_detail_response.dart';
import 'package:superhero_app_api/data/model/superhero_response.dart';
import 'package:superhero_app_api/data/repository.dart';
import 'package:superhero_app_api/screens/superhero_detail_screen.dart';

class SuperHeroSearchScreen extends StatefulWidget {
  const SuperHeroSearchScreen({super.key});

  @override
  State<SuperHeroSearchScreen> createState() => _SuperHeroSearchScreenState();
}

class _SuperHeroSearchScreenState extends State<SuperHeroSearchScreen> {
  Future<SuperheroResponse?>? _superheroInfo;
  // Acceder a la clase respository
  Repository repository = Repository();

  bool _isTextEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Super Hero Search")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Busca un superheroe",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              // Devolver el texto q yo escriba
              onChanged: (name) {
                setState(() {
                  _isTextEmpty = name.isEmpty;
                  _superheroInfo = repository.fetchSuperheroInfo(name);
                });
              },
            ),
          ),
          // Retorno
          bodyList(_isTextEmpty),
        ],
      ),
    );
  }

  FutureBuilder<SuperheroResponse?> bodyList(bool isTextEmpty) {
    return FutureBuilder(
      future: _superheroInfo,
      builder: (contexto, snapshot) {
        if (isTextEmpty) return Text("Introduce un nombre");
        // Espera una respuesta
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
          // Error
        } else if (snapshot.hasError) {
          return Text("Error");
          // Si hay datos
        } else if (snapshot.hasData) {
          var superheroList = snapshot.data?.result;
          return Expanded(
            child: ListView.builder(
              itemCount: superheroList?.length ?? 0,
              itemBuilder: (context, index) {
                if (superheroList != null) {
                  return itemSuperhero(superheroList[index]);
                } else {
                  return Text("Error");
                }
              },
            ),
          );
          // Nada
        } else {
          return Text("No hay resultado");
        }
      },
    );
  }

  Padding itemSuperhero(SuperheroDetailResponse item) => Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
    child: GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              SuperheroDetailScreen(superhero: item),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                item.url,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment(0, -0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.name,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
