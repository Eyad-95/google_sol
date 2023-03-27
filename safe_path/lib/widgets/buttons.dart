import 'package:flutter/material.dart';

class WelcomeScreenBtn extends StatelessWidget {
  final String content;
  final Color bg_color;

  WelcomeScreenBtn(this.content, this.bg_color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 4, bottom: 10, right: 20, left: 40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            backgroundColor: bg_color,
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: () {},
          child: Text(
            content,
            style: TextStyle(fontSize: 42),
          ),
        ),
      ),
    );
  }
}
