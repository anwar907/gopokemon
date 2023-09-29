class PokemonModels {
  final int? count;
  final List<PokemonItemModels>? results;
  PokemonModels({this.count, this.results});

  factory PokemonModels.fromoJson(Map<String, dynamic> json) {
    return PokemonModels(
        count: json['count'],
        results: json['results'] != null
            ? List<PokemonItemModels>.from(
                json['results'].map((e) => PokemonItemModels.fromoJson(e)))
            : null);
  }

  Map<String, dynamic> toJson() =>
      {'count': count, 'results': results?.map((e) => e.toJson())};
}

class PokemonItemModels {
  final String? name;
  final String? urlImage;

  PokemonItemModels({this.name, this.urlImage});

  factory PokemonItemModels.fromoJson(Map<String, dynamic> json) {
    
    return PokemonItemModels(name: json['name'], urlImage: json['url']);
  }

  Map<String, dynamic> toJson() => {'name': name, 'urlImage': urlImage};
}
