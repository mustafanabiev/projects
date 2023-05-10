import 'dart:developer';

import 'package:http/http.dart';
import 'package:rest_api_with_cubit/constants/api_const.dart';
import 'package:rest_api_with_cubit/model/home_model.dart';

class HomeService {
  Future<List<HomeModel>?> getDataService() async {
    try {
      final client = Client();
      final uri = Uri.parse(ApiConst.api);

      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = fromStringList(response.body);
        return data;
      } else {
        log('response.statusCode: ${response.statusCode}');
      }
    } catch (e) {
      log('error is $e');
      return null;
    }
  }
}

final service = HomeService();
