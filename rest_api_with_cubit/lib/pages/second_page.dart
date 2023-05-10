import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_cubit/pages/cubit/counter_cubit.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SecondPage')),
      body: Center(child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Column(
            children: [
              Text(
                state.san.toString(),
                style: const TextStyle(fontSize: 30),
              ),
              ThreePage(),
            ],
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
