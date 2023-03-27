import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            SizedBox(
              height: 168,
              width: 168,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(left: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  backgroundColor: Color.fromRGBO(32, 147, 238, 0.7),
                ),
                onPressed: () {},
                child: SvgPicture.asset(
                  "images/pavan3841.svg",
                ),
              ),
            )

            // Stack(
            // children: [
            // Stack(
            //   alignment: Alignment.bottomCenter,
            //   children: [
            //     Container(
            //       margin: EdgeInsets.only(top: 10),
            //       height: 168,
            //       width: 168,
            //       decoration: BoxDecoration(
            //         color: Color.fromRGBO(32, 147, 238, 0.7),
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(100),
            //         ),
            //       ),
            //     ),
            //     ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           backgroundColor: Colors.transparent),
            //       onPressed: () {},
            //       child: Image.asset(
            //         "images/logo.png",
            //         height: 60,
            //       ),
            //     ),
            //   ],
            // ),
            //   ],
            // )
          ],
        )
      ],
    );
  }
}
