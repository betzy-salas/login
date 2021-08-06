import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldProperties {
  TextEditingController controller;
  InputDecoration decoration;
  Function validator;
  TextInputType keyboardType;
  bool obscureText;
  List<TextInputFormatter> inputFormatters;

  TextFormFieldProperties(controller, decoration, validator, keyboardType,
      obscureText, inputFormatters) {
    this.controller = controller;
    this.decoration = decoration;
    this.validator = validator;
    this.keyboardType = keyboardType;
    this.obscureText = obscureText;
    this.inputFormatters = inputFormatters;
  }
}
