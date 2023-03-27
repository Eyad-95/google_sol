import 'package:flutter/material.dart';

class MainAvatar extends StatelessWidget {
  final String content;
  final avatar;

  MainAvatar(this.content, this.avatar);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              content.toUpperCase(),
              style: TextStyle(
                  color: Color.fromRGBO(32, 147, 238, 1),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            // Stack(
            // children: [
            Stack(children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 168,
                width: 168,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(32, 147, 238, 0.7),
                    borderRadius: BorderRadius.all(Radius.circular(100))),
              ),
            ]),
            //   ],
            // )
          ],
        )
      ],
    );
  }
}
