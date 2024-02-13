import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement }

class CounterState {
  final int count;
  CounterState(this.count);
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield CounterState(state.count + 1);
        break;
      case CounterEvent.decrement:
        yield CounterState(state.count - 1);
        break;
    }
  }
}
