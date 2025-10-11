import 'package:flutter/material.dart';

TextFormField textFormField({ String? hinttext, Widget?prefix}) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      hintText: hinttext,
      focusColor: Colors.black54,
      filled: true,
      prefix: prefix,
    ),

  );
}
