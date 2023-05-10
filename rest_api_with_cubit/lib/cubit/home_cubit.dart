import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_cubit/enum/fetch.dart';
import 'package:rest_api_with_cubit/model/home_model.dart';
import 'package:rest_api_with_cubit/service/home_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.service) : super(const HomeState());

  final HomeService service;

  Future<void> getDataCubit() async {
    try {
      final data = await service.getDataService();
      emit(state.copyWith(status: Status.success, homeModel: data));
    } catch (e) {
      emit(state.copyWith(status: Status.error, error: e.toString()));
    }
  }
}
