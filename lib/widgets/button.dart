import 'package:flutter/material.dart';

import '../services/api_service.dart';

class Button extends StatelessWidget with ApiService {
  final String text;
  final Function()? onClicked;
  Button({super.key, required this.text, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 50,
      child: ElevatedButton(
        onPressed: onClicked,
        child: Text(text),
      ),
    );
  }
}
