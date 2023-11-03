import 'package:flutter/cupertino.dart';

import '../state/counter.state.dart';

class ChangeCounterButton extends StatelessWidget {
  const ChangeCounterButton({required this.add, super.key});

  final bool add;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Icon(
        add ? CupertinoIcons.add : CupertinoIcons.minus,
        size: 48,
      ),
      onPressed: () {
        if (add) {
          CounterState().increaseCounter();
        } else {
          CounterState().decreaseCounter();
        }
      },
    );
  }
}
