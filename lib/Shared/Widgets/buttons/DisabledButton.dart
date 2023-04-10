import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisabledButton extends StatefulWidget {
  String? text;
  double border;
  Function pressed;
  DisabledButton(this.border, this.text, this.pressed, {Key? key})
      : super(key: key);

  @override
  _DisabledButtonState createState() => _DisabledButtonState();
}

class _DisabledButtonState extends State<DisabledButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color(0XFFE1E4E7),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.border)),
      textColor: const Color(0xFF000000),
      onPressed: () {
        widget.pressed;
      },
      child: Text(
        widget.text!,
        style: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.w500),
      ),
    );
  }
}
