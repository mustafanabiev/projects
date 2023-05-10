import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_cubit/pages/cubit/counter_cubit.dart';
import 'package:rest_api_with_cubit/pages/second_page.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text(
                      state.san.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BlocProvider.value(
                              value: context.read<CounterCubit>(),
                              child: SecondPage(),
                            ),
                          ),
                        );
                      },
                      child: const Text('Go to SecondPage'),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
