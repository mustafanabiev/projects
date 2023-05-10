part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    this.status = Status.loading,
    this.homeModel,
    this.error,
  });

  final Status status;
  final List<HomeModel>? homeModel;
  final String? error;

  @override
  List<Object?> get props => [status, homeModel, error];

  HomeState copyWith({
    Status? status,
    List<HomeModel>? homeModel,
    String? error,
  }) {
    return HomeState(
      status: status ?? this.status,
      homeModel: homeModel ?? this.homeModel,
      error: error ?? this.error,
    );
  }
}
