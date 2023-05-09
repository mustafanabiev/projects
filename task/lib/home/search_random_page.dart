import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/cubit/pokemon_cubit.dart';
import 'package:task/enum/fetch_enum.dart';

class SearchRandomPage extends StatefulWidget {
  const SearchRandomPage({super.key});

  @override
  State<SearchRandomPage> createState() => _SearchRandomPageState();
}

class _SearchRandomPageState extends State<SearchRandomPage> {
  @override
  void initState() {
    final number = Random().nextInt(6);
    context.read<PokemonCubit>().getPokemon(number.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SearchRandomPgae')),
      body: Center(
        child: BlocBuilder<PokemonCubit, PokemonState>(
          builder: (context, state) {
            switch (state.status) {
              case FetchStatus.loading:
                return const CircularProgressIndicator();
              case FetchStatus.success:
                final data = state.pokemonModel;
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'berryFlavorName: ${data!.berryFlavor.name}',
                        ),
                        const SizedBox(height: 10),
                        Text('berryFlavorUrl: ${data.berryFlavor.url}'),
                        const SizedBox(height: 10),
                        Text('name: ${data.name}'),
                        const SizedBox(height: 10),
                        Text('id: ${data.id.toString()}'),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          height: 500,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: data.names.length,
                            itemBuilder: (context, index) {
                              final item = data.names[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('namesColor: ${item.color}'),
                                  const SizedBox(height: 10),
                                  Text(
                                    'languageName: ${item.language.name}',
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'languageUrl: ${item.language.url}',
                                  ),
                                  const SizedBox(height: 10),
                                  Text('namesName: ${item.name}'),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              case FetchStatus.error:
                return Text(state.errorMessage.toString());
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
