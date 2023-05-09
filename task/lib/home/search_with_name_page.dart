import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/components/custom_button.dart';
import 'package:task/cubit/pokemon_cubit.dart';
import 'package:task/enum/fetch_enum.dart';

class SearchWithNamePage extends StatelessWidget {
  SearchWithNamePage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchWithNamePage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter name',
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      if (_controller.text.isNotEmpty) {
                        await context
                            .read<PokemonCubit>()
                            .getPokemon(_controller.text);
                      } else {
                        log('_controller.text is empty');
                      }
                    } else {
                      log('_formKey.currentState!.validate() is null');
                    }
                  },
                  text: 'Search',
                ),
                const SizedBox(height: 20),
                Center(
                  child: BlocBuilder<PokemonCubit, PokemonState>(
                    builder: (context, state) {
                      switch (state.status) {
                        case FetchStatus.loading:
                          return const CircularProgressIndicator();
                        case FetchStatus.success:
                          final data = state.pokemonModel;
                          return Column(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                          );
                        case FetchStatus.error:
                          return Text(state.errorMessage.toString());
                        default:
                          return const SizedBox();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
