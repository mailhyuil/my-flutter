import 'package:flutter/material.dart';
import 'package:hahaha/main.dart';
import 'package:hahaha/widgets/button.dart';
import 'package:provider/provider.dart';

class CounterStateless extends StatelessWidget {
  const CounterStateless({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Consumer<CounterProvider>(
            builder: (context, value, child) {
              return Text(value.count.toString());
            },
          )
        ]),
        Row(
          children: [
            Button(
              text: 'click me!',
              onClicked: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .increment();
              },
            )
          ],
        )
      ],
    );
  }
}
