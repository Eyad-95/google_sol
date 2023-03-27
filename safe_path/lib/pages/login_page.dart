import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/main_bg.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.photo),
                  title: new Text('Photo'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text('Video'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.share),
                  title: new Text('Share'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
    });
    super.initState();
  }
}


// showModalBottomSheet(
//                       context: context,
//                       builder: (context) {
//                         return Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             ListTile(
//                               leading: new Icon(Icons.photo),
//                               title: new Text('Photo'),
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                             ListTile(
//                               leading: new Icon(Icons.music_note),
//                               title: new Text('Music'),
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                             ListTile(
//                               leading: new Icon(Icons.videocam),
//                               title: new Text('Video'),
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                             ListTile(
//                               leading: new Icon(Icons.share),
//                               title: new Text('Share'),
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                           ],
//                         );
//                       });