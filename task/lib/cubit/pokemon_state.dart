part of 'pokemon_cubit.dart';

class PokemonState extends Equatable {
  const PokemonState({
    this.status = FetchStatus.initial,
    this.pokemonModel,
    this.errorMessage,
  });

  final FetchStatus status;
  final PokemonModel? pokemonModel;
  final String? errorMessage;

  @override
  List<Object?> get props => [status, pokemonModel, errorMessage];

  PokemonState copyWith({
    FetchStatus? status,
    PokemonModel? pokemonModel,
    String? errorMessage,
  }) {
    return PokemonState(
      status: status ?? this.status,
      pokemonModel: pokemonModel ?? this.pokemonModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
