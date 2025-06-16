import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:superhero_app_api/data/model/superhero_response.dart';

class Repository {

  // Consumir la api
  Future<SuperheroResponse?> fetchSuperheroInfo(String name) async{

    final response = await http.get(Uri.parse(
      "https://www.superheroapi.com/api.php/83edfe904550996e4679c998ad84b019/search/$name"
    ));

    if(response.statusCode == 200){
      // jsonDecode --> recibe la data de la respuesta 
      var decodedJson = jsonDecode(response.body);
      SuperheroResponse superheroResponse = SuperheroResponse.fromJson(decodedJson);
      return superheroResponse;
    }else{
      return null;  
    }
  }
}