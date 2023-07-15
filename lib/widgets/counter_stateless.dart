import 'package:flutter/material.dart';
import 'package:hahaha/widgets/button.dart';

class CounterStateless extends StatelessWidget {
  CounterStateless({Key? key}) : super(key: key);
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Text('$counter')]),
        Row(
          children: [
            Button(
              text: 'click me!',
              onClicked: () {
                counter++;
              },
            )
          ],
        )
      ],
    );
  }
}
