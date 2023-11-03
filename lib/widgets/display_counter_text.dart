// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/widgets.dart';

import '../state/counter.state.dart';

class DisplayCounterWidget extends StatefulWidget {
  const DisplayCounterWidget({super.key});

  @override
  State<DisplayCounterWidget> createState() => _DisplayCounterWidgetState();
}

class _DisplayCounterWidgetState extends State<DisplayCounterWidget> {
  final counterState = CounterState();

  late final StreamSubscription _counter$L;
  int counter = 0;

  @override
  void initState() {
    _subscribeToCounterState();
    super.initState();
  }

  @override
  void dispose() {
    _counter$L.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      counter.toString(),
      style: const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  void _subscribeToCounterState() {
    _counter$L = counterState.state$.listen(
      (state) {
        setState(
          () {
            counter = state;
          },
        );
      },
    );
  }
}
