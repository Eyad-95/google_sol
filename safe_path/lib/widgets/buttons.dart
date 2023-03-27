import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../pages/who_am_i.dart';

class WelcomeScreenBtn extends StatelessWidget {
  final String content;
  final Color bg_color;

  WelcomeScreenBtn(this.content, this.bg_color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 4, bottom: 10, right: 30, left: 30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            backgroundColor: bg_color,
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: () => goToWhoAmI(context),
          child: Text(
            content,
            style: TextStyle(fontSize: 42),
          ),
        ),
      ),
    );
  }

  void goToWhoAmI(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => WhoAmI()));
  }

  // void goToSettings(BuildContext context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (context) {
  //         return Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             ListTile(
  //               leading: new Icon(Icons.photo),
  //               title: new Text('Photo'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             ListTile(
  //               leading: new Icon(Icons.music_note),
  //               title: new Text('Music'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             ListTile(
  //               leading: new Icon(Icons.videocam),
  //               title: new Text('Video'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             ListTile(
  //               leading: new Icon(Icons.share),
  //               title: new Text('Share'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //           ],
  //         );
  //       });
  // }
}
