
import 'package:equatable/equatable.dart';

class CounterState extends Equatable{
  final int countValue;
  const CounterState({ this.countValue = 0});

  CounterState copyWith({int? countValue}){
    return CounterState(countValue: countValue ?? this.countValue);
  }

  @override
  List<Object?> get props => throw UnimplementedError();

}