import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_house/Security/Screens/signin.dart';

import '../../Shared/Widgets/buttons/ActiveButton.dart';
import '../../Shared/Widgets/buttons/DisabledButton.dart';
import '../../Shared/Widgets/buttons/Input.dart';
import '../../Shared/Widgets/texts/subtitles.dart';
import '../../Shared/Widgets/texts/titles.dart';
import 'codeVerification.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                    child: Titles(35, "Sign Up"),
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
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Subtitles("Name"),
                    Input(Icons.visibility, "Type your Name", false),
                  ],
                ),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Subtitles("Confirm Password"),
                    Input(Icons.visibility, "Type Confirm Password", true),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child:
                    ActiveButton(10, "Sign Up", redirectCodeVerification, 19),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: DisabledButton(10, "Sign Up With Google", () {}),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Do you have an account? ",
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                  MaterialButton(
                    onPressed: redirectSignIn,
                    child: Text(
                      "Sign In",
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

  void redirectCodeVerification() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return CodeVerification();
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
