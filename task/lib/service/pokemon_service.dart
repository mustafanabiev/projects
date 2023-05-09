import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:task/constants/api_const.dart';
import 'package:task/models/pokemon_model.dart';

class PokemonService {
  final client = http.Client();

  Future<PokemonModel?> fetchData(String name) async {
    final uri = Uri.parse(ApiConst.api(name));
    try {
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final pokemon = PokemonModel.fromJson(response.body);
        return pokemon;
      } else {
        log('response.statusCode: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      log('error is => $e');
      return null;
    }
  }
}

final pokemonService = PokemonService();
