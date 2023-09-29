import 'package:flutter/material.dart';
import 'package:pokemon/app/models/pokemon_models.dart';

class PokemonState with ChangeNotifier {
  List<PokemonModels> listPokemon = [];

  List<PokemonModels> get value => listPokemon.toList();


}
