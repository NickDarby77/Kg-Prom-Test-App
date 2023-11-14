import 'package:flutter/material.dart';

abstract class AppFonts {
  static const TextStyle s22w700 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle s23w600 = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w600,
  );

  static TextStyle s15w500 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.8),
  );

  static const TextStyle s14w600 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle s14w400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle w500UnderlineText = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );
}
