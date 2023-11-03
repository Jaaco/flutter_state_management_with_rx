import 'package:rxdart/rxdart.dart';

class CounterState {
  // === Singleton Constructor === //
  static final _instance = CounterState._privateConstructor();
  CounterState._privateConstructor();
  factory CounterState() => _instance;

  // === Stream === //

  final _state$ = BehaviorSubject<int>.seeded(0);

  ValueStream<int> get state$ => _state$.stream;

  int get state => _state$.value;

  // === Events === //

  void increaseCounter() {
    final int currentState = state;

    final int newState = currentState + 1;

    _state$.add(newState);
  }

  void decreaseCounter() {
    final int currentState = state;

    final int newState = currentState - 1;

    _state$.add(newState);
  }
}
