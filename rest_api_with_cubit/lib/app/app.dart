import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_cubit/cubit/home_cubit.dart';
import 'package:rest_api_with_cubit/pages/counter.dart';
import 'package:rest_api_with_cubit/pages/cubit/counter_cubit.dart';
import 'package:rest_api_with_cubit/pages/home_page.dart';
import 'package:rest_api_with_cubit/service/home_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const Counter(),
      ),
      // home: BlocProvider(
      //   create: (context) => HomeCubit(service)..getDataCubit(),
      //   child: const HomePage(),
      // ),
    );
  }
}
