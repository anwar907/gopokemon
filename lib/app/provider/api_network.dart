import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokemon/app/models/pokemon_models.dart';
import 'package:pokemon/utils/const.dart';

class ApiProvider {
  Future<PokemonModels> listPokemon() async {
    try {
      final response = await http.get(Uri.parse(ApiUrl.listPokemon));
      final result = jsonDecode(response.body);

      return PokemonModels.fromoJson(result);
    } catch (e) {
      throw Exception(e);
    }
  }
}
