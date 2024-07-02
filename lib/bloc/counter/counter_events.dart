import 'package:equatable/equatable.dart';

abstract class CounterEvents extends Equatable {
  const CounterEvents();
  @override
  List<Object> get props => [];

}

class IncrementEvent extends CounterEvents{}

class DecrementEvent extends CounterEvents{}