import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_house/components/buttons/ActiveButton.dart';
import 'package:model_house/components/texts/titles.dart';
import 'package:model_house/screens/authorization/signin.dart';
import 'package:model_house/screens/authorization/signup.dart';

class WelcomeApplication extends StatefulWidget {
  const WelcomeApplication({Key? key}) : super(key: key);

  @override
  State<WelcomeApplication> createState() => _WelcomeApplicationState();
}

class _WelcomeApplicationState extends State<WelcomeApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Titles(40, "Welcome")),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 100),
              child: Image.asset(
                'images/logo.png',
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                        width: 120,
                        height: 45,
                        child: ActiveButton(5, "Sign In", redirectSignIn)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                        width: 120,
                        height: 45,
                        child: ActiveButton(5, "Sign Up", redirectSignUp)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void redirectSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Signup();
        },
      ),
    );
  }

  void redirectSignIn() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Signin();
        },
      ),
    );
  }
}
