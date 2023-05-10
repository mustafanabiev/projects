part of 'counter_cubit.dart';

class CounterState extends Equatable {
  const CounterState({
    this.san = 0,
  });

  final int san;

  @override
  List<Object> get props => [san];

  CounterState copyWith({
    int? san,
  }) {
    return CounterState(
      san: san ?? this.san,
    );
  }
}
