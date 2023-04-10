import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Input extends StatefulWidget {
  String? text;
  IconData icon;
  bool? visibility;
  Input(this.icon, this.text, this.visibility, {Key? key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    if (widget.visibility!) {
      return TextField(
        keyboardType: TextInputType.visiblePassword,
        style: GoogleFonts.poppins(fontSize: 14, color: Color(0XFF02AA8B)),
        decoration: InputDecoration(
            hintText: widget.text,
            hintStyle: const TextStyle(color: Color(0XFF02AA8B)),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF02AA8B))),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF02AA8B))),
            suffixIcon: IconButton(
              onPressed: () {
                //setState(() {
                //  isVisivilityPassword = !isVisivilityPassword;
                //});
              },
              icon: Icon(
                widget.icon,
                color: Color(0XFF02AA8B),
              ),
            )),
      );
    }
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      style: GoogleFonts.poppins(fontSize: 14, color: Color(0XFF02AA8B)),
      decoration: InputDecoration(
        hintText: widget.text,
        hintStyle: const TextStyle(color: Color(0XFF02AA8B)),
        fillColor: Colors.white,
        filled: true,
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF02AA8B))),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF02AA8B))),
      ),
    );
  }
}
