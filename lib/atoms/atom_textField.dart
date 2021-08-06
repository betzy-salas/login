import 'package:flutter/material.dart';

class TextFormFieldAtom extends StatelessWidget {
  final controller;
  final decoration;
  final validator;
  final keyboardType;
  final obscureText;
  final inputFormatters;
  const TextFormFieldAtom(
      {Key key,
      this.controller,
      this.decoration,
      this.validator,
      this.keyboardType,
      this.obscureText,
      this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*if (this.keyboardType == null) {
      return TextFormField(
        controller: this.controller,
        decoration: this.decoration,
        validator: this.validator,
        obscureText: this.obscureText,
      );
    } else {*/
    return TextFormField(
        controller: this.controller,
        decoration: this.decoration,
        validator: this.validator,
        keyboardType: this.keyboardType,
        obscureText: this.obscureText,
        inputFormatters: this.inputFormatters);
    //}
  }
}
