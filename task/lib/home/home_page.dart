import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/components/custom_button.dart';
import 'package:task/cubit/pokemon_cubit.dart';
import 'package:task/home/search_random_page.dart';
import 'package:task/home/search_with_name_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider.value(
                      value: BlocProvider.of<PokemonCubit>(context),
                      child: SearchWithNamePage(),
                    ),
                  ),
                );
              },
              text: 'Search with Name',
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider.value(
                      value: BlocProvider.of<PokemonCubit>(context),
                      child: const SearchRandomPage(),
                    ),
                  ),
                );
              },
              text: 'Search Random',
            ),
          ],
        ),
      ),
    );
  }
}
