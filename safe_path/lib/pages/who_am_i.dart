import 'package:flutter/material.dart';
import '../widgets/avatars.dart';

class WhoAmI extends StatelessWidget {
  const WhoAmI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              Image.asset(
                "images/main_bg.png",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(32, 147, 238, 1),
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        height: 63,
                        width: 190,
                        child: Center(
                          child: Text("Sign As",
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  MainAvatar("Parent", "avatar"),
                  SizedBox(
                    height: 40,
                  ),
                  MainAvatar("Child", "avatar"),
                  Spacer(
                    flex: 2,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
