import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_house/Security/Screens/signup.dart';

import '../../Shared/Components/PrincipalView.dart';
import '../../Shared/Widgets/buttons/ActiveButton.dart';
import '../../Shared/Widgets/buttons/DisabledButton.dart';
import '../../Shared/Widgets/buttons/Input.dart';
import '../../Shared/Widgets/texts/subtitles.dart';
import '../../Shared/Widgets/texts/titles.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Titles(35, "Sign In"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Image.asset(
                      'images/logo.png',
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Subtitles("Email Address"),
                    Input(Icons.visibility, "Type your Email Address", false),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Subtitles("Email Password"),
                    Input(Icons.visibility, "Type your Password", true),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ActiveButton(10, "Sign In", redirectHome, 19),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: DisabledButton(10, "Sign In With Google", () {}),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                  MaterialButton(
                    onPressed: redirectSignUp,
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              )
            ],
          )),
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

  void redirectHome() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return PrincipalView();
        },
      ),
    );
  }
}