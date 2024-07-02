import 'package:bloc/bloc.dart';
import 'package:counterapp/bloc/counter/counter_events.dart';
import 'package:counterapp/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState>{
  
  
  CounterBloc(): super( const CounterState()){
    on<IncrementEvent>(_increment);
    on<DecrementEvent>(_decrement);


  }

  void _increment(IncrementEvent event, Emitter<CounterState> emit){
    emit(state.copyWith(countValue: state.countValue +1 ));
  }

  void _decrement (DecrementEvent event, Emitter<CounterState> emit){
    emit(state.copyWith(countValue: state.countValue - 1));
  }

}