import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/input_fields_main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final double availableHeight = constraints.maxHeight;
      final double availableWidth = constraints.maxWidth;
      return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "images/main_bg.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 20,
                          offset: Offset(0, 3))
                    ]),
                height: availableHeight * 0.75,
                width: availableWidth,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.5, right: 16.5),
                  child: Column(
                    children: [
                      Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome Back',
                          style: TextStyle(
                              fontSize: 36,
                              color: Color.fromRGBO(32, 147, 238, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      MainInput()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}




// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset(
//             "images/main_bg.png",
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             fit: BoxFit.cover,
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 0)).then((_) {
//       showModalBottomSheet(
//           isDismissible: false,
//           isScrollControlled: true,
//           context: context,
//           builder: (context) {
//             return Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 ListTile(
//                   leading: new Icon(Icons.photo),
//                   title: new Text('Photo'),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: new Icon(Icons.music_note),
//                   title: new Text('Music'),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: new Icon(Icons.videocam),
//                   title: new Text('Video'),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: new Icon(Icons.share),
//                   title: new Text('Share'),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             );
//           });
//     });
//     super.initState();
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My App'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {},
//           child: Text('Open Modal Sheet'),
//         ),
//       ),
//     );
//   }

//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 0)).then((_) {
//       showModalBottomSheet(
//           context: context,
//           builder: (builder) {
//             return Container(
//               height: 300,
//               child: Column(
//                 children: [Text("hi")],
//               ),
//             );
//           },
//           isDismissible: false);
//     });
//     super.initState();
//   }
// }

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Learning',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() {
//     return _MyHomePageState();
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var _selected = "";
//   var _test = "Full Screen";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Full Screen Dialog"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () {
//                 ;
//               },
//               child: Text("Show Dialog"),
//             ),
//             Text(_selected)
//           ],
//         ),
//       ),
//     );
//   }
// }

// void _openDialog() async {
//     String? _selected =
//         await Navigator.of(context).push(MaterialPageRoute<String>(
//             builder: (BuildContext context) {
//               return Scaffold(
//                 body: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height,
//                   padding: EdgeInsets.all(20),
//                   color: Colors.white,
//                   child: Column(
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: Text(
//                           'Full Screen',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               );
//             },
//             fullscreenDialog: true));
//     if (_selected != null)
//       setState(() {
//         _selected = _selected;
//       });
//   }


