import 'package:bloc_mastering/bloc/counter_event.dart';
import 'package:bloc_mastering/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(0)) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        // if (state.counter == 2) {
        //   throw Exception("Error Ex");
        // }
        emit(ChangeCounterState(state.counter + 1));
      } else {
        emit(ChangeCounterState(state.counter - 1));
      }
    });
    // on<IncrementEvent>((event, emit) {
    //   emit(IncrementState(state.counter + 1));
    // });
    // on<DecrementEvent>((event, emit) {
    //   emit(DecrementState(state.counter - 1));
    // });
  }
}
