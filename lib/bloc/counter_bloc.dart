import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitialState(counter: 1)) {
    on<EventAdd>(
        (event, emit) => emit(CounterChangeState(counter: state.counter + 1)));
    on<EventLess>(
        (event, emit) => emit(CounterChangeState(counter: state.counter - 1)));
    on<EventReset>((event, emit) => emit(const CounterChangeState(counter: 0)));
  }

  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
  }

  @override
  void onChange(Change<CounterState> change) {
    super.onChange(change);
  }
}
