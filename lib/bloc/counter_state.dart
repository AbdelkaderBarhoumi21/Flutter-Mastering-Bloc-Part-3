import 'package:equatable/equatable.dart';

sealed class CounterState extends Equatable {
  final int counter;
  const CounterState(this.counter);

  @override
  List<Object?> get props => [counter];
}

//because we used sealed class COunter bloc can impl CounterState for initialstate
class CounterInitial extends CounterState {
  const CounterInitial(super.counter);
}

class ChangeCounterState extends CounterState {
  const ChangeCounterState(super.counter);
}

// class IncrementState extends CounterState {
//   const IncrementState(super.counter);
// }

// class DecrementState extends CounterState {
//   const DecrementState(super.counter);
// }
