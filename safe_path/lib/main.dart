import 'package:flutter/material.dart';

void main() {
  runApp(const WelcomeScreen());
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Page",
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 103, 245, 1),
        body: Center(
          child: Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Image.asset(
                "images/logonobg.png",
                height: 230,
              ),
              Spacer(flex: 6),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Text(
                  "You are finally safe!",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),

                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 103, 245, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {},
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 103, 245, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
