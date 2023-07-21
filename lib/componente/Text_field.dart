import 'package:flutter/material.dart';

class TextFieldsIngreso extends StatelessWidget {
  final String hintText;
  final controller;
  final double fem;

  const TextFieldsIngreso({
    super.key,
    required this.hintText,
    required this.controller,
    required this.fem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 11 * fem),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontFamily: 'News Cycle',
          fontSize: 18 * fem,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5 * fem,
          color: Color(0xffffffff),
        ),
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: 12 * fem, horizontal: 16 * fem),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'News Cycle',
            fontSize: 18 * fem,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5 * fem,
            color: Color(0x99ffffff),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x19f4f4f4)),
            borderRadius: BorderRadius.circular(15 * fem),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x19f4f4f4)),
            borderRadius: BorderRadius.circular(15 * fem),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x5a6cea)),
            borderRadius: BorderRadius.circular(15 * fem),
          ),
          filled: true,
          fillColor: Color(0x19ffffff),
        ),
      ),
    );
  }
}
