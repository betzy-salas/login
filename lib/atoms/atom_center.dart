import 'package:flutter/material.dart';

class CenterAtom extends StatelessWidget {
  final Widget child;

  const CenterAtom({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: this.child,
    );
  }
}
