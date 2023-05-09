import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_with_provider/model/home_model.dart';
import 'package:rest_api_with_provider/provider/home_provider.dart';
import 'package:rest_api_with_provider/service/home_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // context.read<HomeProvider>().getData();
    Provider.of<HomeProvider>(context, listen: false).getData();
  }

  @override
  Widget build(BuildContext context) {
    // final postMdl = context.watch<HomeProvider>();
    final postMdl = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: postMdl.loading
          ? const Center(
              child: SizedBox(
                child: CircularProgressIndicator(),
              ),
            )
          : Center(
              child: ListView.builder(
                itemCount: postMdl.homeModel!.length,
                itemBuilder: (context, index) {
                  final item = postMdl.homeModel?[index];
                  return ListTile(
                    title: Text(item?.name ?? 'Mustafa'),
                  );
                },
              ),
            ),
    );
  }
}
