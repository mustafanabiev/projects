import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/cubit/pokemon_cubit.dart';
import 'package:task/home/home_page.dart';
import 'package:task/service/pokemon_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PokemonCubit(pokemonService),
        child: const HomePage(),
      ),
    );
  }
}
