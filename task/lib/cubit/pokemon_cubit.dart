import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/enum/fetch_enum.dart';
import 'package:task/models/pokemon_model.dart';
import 'package:task/service/pokemon_service.dart';

part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit(this.service) : super(const PokemonState());

  final PokemonService service;

  Future<void> getPokemon(String name) async {
    emit(state.copyWith(status: FetchStatus.loading));
    try {
      final pokemon = await service.fetchData(name);
      emit(state.copyWith(status: FetchStatus.success, pokemonModel: pokemon));
    } catch (e) {
      log('error is => $e');
      emit(
        state.copyWith(status: FetchStatus.error, errorMessage: e.toString()),
      );
    }
  }
}
