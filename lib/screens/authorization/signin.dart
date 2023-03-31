import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
              child: Text(
                "Welcome",
                style: GoogleFonts.poppins(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF152031)),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: Image.asset(
                'images/logo.png',
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      width: 120,
                      height: 45,
                      child: MaterialButton(
                        color: Color(0XFF02AA8B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      width: 120,
                      height: 45,
                      child: MaterialButton(
                        color: Color(0XFF02AA8B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
