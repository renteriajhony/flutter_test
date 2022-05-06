part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class EventAdd extends CounterEvent {}
class EventLess extends CounterEvent {}
class EventReset extends CounterEvent {}