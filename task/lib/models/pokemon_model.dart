import 'dart:convert';

class PokemonModel {
  const PokemonModel({
    required this.berryFlavor,
    required this.id,
    required this.name,
    required this.names,
  });

  final BerryFlavor berryFlavor;
  final int id;
  final String name;
  final List<Names> names;

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      berryFlavor:
          BerryFlavor.fromJson(map['berry_flavor'] as Map<String, dynamic>),
      id: map['id'] as int,
      name: map['name'] as String,
      names: List<Names>.from(
        (map['names'] as List<dynamic>).map<Names>(
          (x) => Names.fromJson(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class BerryFlavor {
  const BerryFlavor({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory BerryFlavor.fromJson(Map<String, dynamic> json) {
    return BerryFlavor(
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }
}

class Names {
  const Names({
    required this.color,
    required this.language,
    required this.name,
  });

  final String color;
  final Language language;
  final String name;

  factory Names.fromJson(Map<String, dynamic> json) {
    return Names(
      color: json['color'] as String,
      language: Language.fromJson(json['language'] as Map<String, dynamic>),
      name: json['name'] as String,
    );
  }
}

class Language {
  const Language({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }
}
