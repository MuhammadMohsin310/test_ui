import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myText extends StatelessWidget {
  const myText(this.text, {this.fontSize, this.color, this.weight, Key? key})
      : super(key: key);
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        color: color ?? Colors.white,
        fontSize: fontSize ?? 15,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}
