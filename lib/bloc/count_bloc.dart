import 'package:api_integration1/bloc/count_event.dart';
import 'package:api_integration1/bloc/count_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountBlock extends Bloc<CountEvent, CountState> {
  int count = 0;
  CountBlock() : super(InitialState(0)) {
    on<IncrementEvent>((event, emit) {
      count++;
      emit(InitialState(count));
    });

    on<DecrementEvent>((event, emit) {
      count--;
      emit(InitialState(count));
    });
  }
}
