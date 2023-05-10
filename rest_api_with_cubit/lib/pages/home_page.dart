import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_cubit/cubit/home_cubit.dart';
import 'package:rest_api_with_cubit/enum/fetch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeCubit>().state;
    return Scaffold(
      body: Center(
        child: state.status == Status.loading
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: state.homeModel?.length,
                itemBuilder: (context, index) {
                  switch (state.status) {
                    case Status.success:
                      final item = state.homeModel![index];
                      return ListTile(
                        leading: Text(item.id.toString()),
                        title: Text(item.name),
                        subtitle: Text(item.username),
                        trailing: Text(item.email),
                      );

                    case Status.error:
                      return Text('Error is ${state.error}');

                    default:
                      return const CircularProgressIndicator();
                  }
                },
              ),
      ),
    );
  }
}
