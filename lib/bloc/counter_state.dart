part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int counter;
  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}

class CounterInitialState extends CounterState {
  const CounterInitialState({required int counter}) : super(counter: counter);
}

class CounterChangeState extends CounterState {
  const CounterChangeState({required int counter}) : super(counter: counter);
}
