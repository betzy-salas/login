import 'package:flutter/material.dart';
import 'dart:ui';

class SimpleTextAtom extends StatelessWidget {
  final text;
  final align;
  final size;
  final weight;
  final family;
  final style;
  final colors;

  SimpleTextAtom(
      {Key key,
      this.text,
      this.align,
      this.size,
      this.weight,
      this.family,
      this.style,
      this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) => new Text(this.text,
      style: TextStyle(
          fontStyle: this.style,
          fontSize: this.size,
          fontWeight: this.weight,
          fontFamily: this.family,
          color: this.colors),
      textAlign: this.align);
}
