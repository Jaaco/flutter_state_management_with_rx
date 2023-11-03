import 'package:flutter/material.dart';

import '../widgets/change_counter_button.dart';
import '../widgets/display_counter_text.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ChangeCounterButton(add: false),
            DisplayCounterWidget(),
            ChangeCounterButton(add: true),
          ],
        ),
      ),
    );
  }
}
