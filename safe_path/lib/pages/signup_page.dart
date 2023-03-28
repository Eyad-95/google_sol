import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '../widgets/input_fields_main.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(32, 147, 238, 1),
                  ),
                ),
              ),
              Spacer(),
              MainInput("Name", "images/person.svg"),
              SizedBox(
                height: 10,
              ),
              MainInput("Age", "images/age.svg"),
              SizedBox(
                height: 10,
              ),
              MainInput("Phone Number", "phone.svg"),
              SizedBox(
                height: 10,
              ),
              MainInput("E-mail", "images/mail_check.svg"),
              SizedBox(
                height: 10,
              ),
              MainInput("Password", "images/lock.svg"),
              SizedBox(
                height: 10,
              ),
              MainInput("Password", "images/lock.svg"),
              SizedBox(
                height: 10,
              ),
              Spacer(
                flex: 2,
              ),
              SignBtn("Create Account", Color.fromRGBO(32, 147, 238, 1),
                  Color.fromRGBO(32, 147, 238, 1), () {}),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Already have an account?",
                ),
              ),
              SizedBox(
                height: 7,
              ),
              SignBtn("Sign In", Colors.white, Color.fromRGBO(32, 147, 238, 1),
                  () {}, false),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
