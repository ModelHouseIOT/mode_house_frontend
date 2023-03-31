import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActiveButton extends StatefulWidget {
  String? text;
  Function pressed;
  double border;
  ActiveButton(this.border, this.text, this.pressed, {Key? key})
      : super(key: key);

  @override
  _ActiveButtonState createState() => _ActiveButtonState();
}

class _ActiveButtonState extends State<ActiveButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color(0XFF02AA8B),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.border)),
      textColor: Colors.white,
      onPressed: () => widget.pressed(),
      child: Text(
        widget.text!,
        style: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.w500),
      ),
    );
  }
}
