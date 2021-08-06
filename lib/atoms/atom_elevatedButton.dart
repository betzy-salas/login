import 'package:flutter/material.dart';

class ElevatedButtonAtom extends StatelessWidget {
  final child;
  final onPressed;
  final style;

  const ElevatedButtonAtom({Key key, this.child, this.onPressed, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) => new ElevatedButton(
      child: this.child, onPressed: this.onPressed, style: this.style);
}
