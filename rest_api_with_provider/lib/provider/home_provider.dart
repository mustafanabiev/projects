import 'package:flutter/material.dart';
import 'package:rest_api_with_provider/model/home_model.dart';
import 'package:rest_api_with_provider/service/home_service.dart';

class HomeProvider with ChangeNotifier {
  late List<HomeModel>? homeModel;

  bool loading = false;

  HomeService service = HomeService();

  getData() async {
    loading = true;
    homeModel = await service.getData();
    loading = false;
    notifyListeners();
  }
}
