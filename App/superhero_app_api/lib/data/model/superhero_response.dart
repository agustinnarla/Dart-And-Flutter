import 'package:superhero_app_api/data/model/superhero_detail_response.dart';

class SuperheroResponse {
  final String response;
  final List<SuperheroDetailResponse> result;

  SuperheroResponse({required this.response, required this.result});

  // Creamos un listado para luego mapearlo 
  factory SuperheroResponse.fromJson(Map<String, dynamic> json) {
    var list = json["results"] as List;
    List<SuperheroDetailResponse> heroList = list
        .map((hero) => SuperheroDetailResponse.fromJson(hero))
        .toList();


    // Buscar en el json lo q coincida con response y el listado
    return SuperheroResponse(
      response: json["response"],
      result: heroList,
    );
  }
}
