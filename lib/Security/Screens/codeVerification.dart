import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Screens/signup.dart';

import '../../Shared/Components/PrincipalView.dart';
import '../../Shared/Widgets/buttons/ActiveButton.dart';
import '../../Shared/Widgets/buttons/Input.dart';
import '../../Shared/Widgets/texts/subtitles.dart';
import '../../Shared/Widgets/texts/titles.dart';
import '../Interfaces/Account.dart';

class CodeVerification extends StatefulWidget {
  String code;
  CodeVerification(this.code, {Key? key}) : super(key: key);

  @override
  _CodeVerificationState createState() => _CodeVerificationState();
}

class _CodeVerificationState extends State<CodeVerification> {
  final code = TextEditingController();
  Account? account;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: redirectSignUp,
        elevation: 100,
        child: Icon(Icons.arrow_back_ios),
        backgroundColor: Color(0XFF02AA8B),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
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
            Container(
              padding: const EdgeInsets.all(15),
              width: 350,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Subtitles("Verification Code"),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Input(
                          Icons.visibility, "Code verification", false, code),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: ActiveButton(5, "Next", redirectHome, 19)),
                  ],
                ),
              )),
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

  void redirectHome() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return PrincipalView(account!);
        },
      ),
    );
  }
}
