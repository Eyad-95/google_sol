import 'package:flutter/material.dart';

class MainInput extends StatelessWidget {
  const MainInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(icon: Image.asset("images/child_main.svg")),
    );
  }
}
